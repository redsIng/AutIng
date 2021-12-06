function [arms, avgReward,...
    argMaxs, actualPreference] = prefUpdate(arms, time, alpha)
N = size(arms,2);
argMaxs = zeros(1,time);
rewardSum = 0;
avgReward = zeros(1,time);
actualPreference = zeros(1,time);
for t=2:time
    % get esteem value for every action at time t
    [P,select,argMaxs(t)] = preference(arms,t-1);
    actualPreference(t) = P;
    disp(select)
    for a = 1:N
        if a == select
            arms(a).N(t) = arms(a).N(t-1) + 1;
            [arms(a).R(t),arms(a).q(t)] = bandit(arms(a));
            arms(a).H(t) = arms(a).H(t-1)+(alpha)*...
                (arms(a).R(1,t)-avgReward(t-1))*(1-P);
            arms(a).Q(t) = arms(a).Q(t-1)+(1/t)*(arms(a).R(t)-arms(a).Q(t-1));
        else
            arms(a).N(t) = arms(a).N(t-1);
            arms(a).q(t) = normrnd(arms(a).q0, randi(arms(a).q0*2));
            arms(a).R(t) = arms(a).R(t-1);
            arms(a).Q(t) = arms(a).Q(t-1);
            arms(a).H(t) = arms(a).H(t-1)+(alpha)*...
                (arms(a).R(t-1)-avgReward(t-1))*(P);
        end
    end
    rewardSum = rewardSum + arms(select).R(t);
    avgReward(t) = rewardSum/t;
end
end
