function [arms, avgReward, argMaxs, actualChoice] = eGreedy(e,arms,time,step_type,alpha)
% e-greedy alg with non-stationary true values of actions
N = size(arms,2);
QtList = zeros(1,N);
qtList = zeros(1,N);

argMaxs = zeros(1,time);
rewardSum = 0;
avgReward = zeros(1,time);
actualChoice = zeros(1,time);
% s = rng;
% rng('default');
c = 0;
if step_type == "const"
    steps = alpha;
end
for t = 2:time
    
    p = rand;
    for a = 1:N
        QtList(a) = arms(a).Q(t);
        qtList(a) = arms(a).q(t);        
    end
    [maxQ, argMax] = max(QtList);
    [~, argMaxs(t)] = max(qtList);
    if p < e
        select = randi([1,N]);
        c = c+1;
        %         disp(c)
    else
        select = argMax;
    end
    actualChoice(t) = select;
    for a = 1:N
        if a == select
            arms(a).N(t) = arms(a).N(t-1) + 1;
            if step_type == "timing"
                steps = 1/t;
            end
            if step_type == "counter"
                steps = 1/(arms(a).N(t));
            end
            [arms(a).R(t),arms(a).q(t)] = bandit(arms(a));
            arms(a).Q(t) = arms(a).Q(t-1)+(steps)*(arms(a).R(t)-arms(a).Q(t-1));
        else
            arms(a).N(t) = arms(a).N(t-1);
            arms(a).q(t) = normrnd(arms(a).q0, randi(arms(a).q0*2));
            arms(a).R(t) = arms(a).R(t-1);
            arms(a).Q(t) = arms(a).Q(t-1);
        end
    end
    rewardSum = rewardSum + arms(select).R(t);
    avgReward(t) = rewardSum/t;
end
% rng(s);
end