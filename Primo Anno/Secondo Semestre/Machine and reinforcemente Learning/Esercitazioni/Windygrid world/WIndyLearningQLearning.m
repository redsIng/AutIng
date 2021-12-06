clear all
close all
clc

nx=10;
ny=6;
xtarget=8;
A=4;
ytarget=4;
wind = [0 0 0 1 1 1 2 2 1 0];
epsilon=0.1;
alpha=0.1;
gamma = 1;
starget = sub2ind([nx,ny],xtarget,ytarget);
update = @(s,a) windy(s,a,nx,ny,wind);
%Sarsa
S=nx*ny;
Q=zeros(S,A);
numEpisodes = 1e4;
G=0;
traj = [];
for i = 1:numEpisodes
    s=sub2ind([nx,ny],2,4);
    traj = s;
    while s~=starget
        a=epsGreedy(Q(s,:),epsilon);
        
        [sp,r]=update(s,a);
        traj = [traj,sp];

        Qp=max(Q(sp,:));
        Q(s,a)=Q(s,a)+alpha*(r+gamma*Qp-Q(s,a));
        s=sp;
        G = G+r;
    end
    if mod(i,100)==0
        [xx,yy]=ind2sub([nx ny],traj);
        clc
        plot(xx,yy);
        xlim([1,nx]);
        ylim([1,ny]);
        pause(1);
    end
end



