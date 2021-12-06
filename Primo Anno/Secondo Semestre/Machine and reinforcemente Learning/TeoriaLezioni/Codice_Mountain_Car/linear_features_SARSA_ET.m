clear all
close all 
clc

lbx = -1.2;
ubx = 0.5;
lbv = -0.07;
ubv = 0.07;

M = 5;
N = 4;

A = 3;

numEpisodes = 1e3;
epsilon = 1e-1;
alpha = 1e-3;
lambda = 0.8;
gamma = 1;

nCells = (M + 1)^2;
d = A*N*nCells;

[gridx, gridv] = build_tiles(lbx, ubx, lbv, ubv, M, N);

w = zeros(d, 1);

for ii = 1:numEpisodes
    z = zeros(d,1);
    s = [0.2*rand - 0.1; 0];
    a = epsgreedy(s, w, epsilon, gridx, gridv, M, N, A);
    isTerminal = 0;
    steps = 0;
    while ~isTerminal
        steps = steps + 1;
        x = getFeatures(s, a, gridx, gridv, M, N, A);
        [sp, r, isTerminal] = dynamics_mountain_car(s, a, lbx, ubx, lbv, ubv);
        if isTerminal
            delta = r - w'*x;
        else
            ap = epsgreedy(sp, w, epsilon, gridx, gridv, M, N, A);
            xp = getFeatures(sp, ap, gridx, gridv, M, N, A);
            delta = r + gamma*w'*xp - w'*x;
        end
        z = gamma*lambda*z + x;
        w = w + alpha*delta*z;
        s = sp;
        a = ap;
        
        if ii == numEpisodes
            clf
            pxx = linspace(lbx, ubx);
            plot(pxx, sin(3*pxx),'k','linewidth',2);
            hold on
            plot(s(1), sin(3*s(1)),'b*');
            title([' Action = ', num2str(a),...
                ' - Episode = ',num2str(ii),...
                ' - Steps = ',num2str(steps')])
            pause(0.1)
        end
    end    
    disp([ii, steps])
end

%%
[xx, vv] = meshgrid(linspace(lbx+eps, ubx-eps), ...
    linspace(lbv+eps, ubv-eps));
Value = zeros(size(xx));
for i1 = 1:size(xx,1)
    for i2 = 1:size(xx,2)
        s = [xx(i1,i2), vv(i1, i2)];
        q = zeros(A, 1);
        for a = 1:A
            q(a) = w'*getFeatures(s, a, gridx, gridv, M, N, A);
        end
        Value(i1,i2) = max(q);
    end
end

figure()
surf(xx, vv, Value)