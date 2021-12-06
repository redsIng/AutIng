function [arms, avgReward, argMaxs, actualChoice] = UCB(arms,time,c,alpha)
N = size(arms,2);
QtList = zeros(1,N);
argMaxs = zeros(1,time);
rewardSum = 0;
avgReward = zeros(1,time);
actualChoice = zeros(1,time);
% s = rng;
% rng('default');
for t = 2:time
    for a = 1:N
        if arms(a).N(t) == 0
            QtList(a) = arms(a).Q(t-1);
        else
            QtList(a) = arms(a).Q(t-1) + c*sqrt(log(t)/arms(a).N(t-1));
        end
    end
    [maxQ, argMax] = max(QtList);
    select = argMax;
    argMaxs(t)=argMax;
    actualChoice(t) = select;
    for a = 1:N
        if a == select
            arms(a).N(t) = arms(a).N(t-1) + 1;         
            [arms(a).R(t),arms(a).q(t)] = bandit(arms(a),t);
            arms(a).Q(t) = arms(a).Q(t-1)+(alpha)*(arms(a).R(t)-arms(a).Q(t-1));
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