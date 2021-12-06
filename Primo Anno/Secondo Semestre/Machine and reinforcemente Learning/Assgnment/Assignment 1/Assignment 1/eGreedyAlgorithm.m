function [reward,arms,Na,optCount]=eGreedyAlgorithm(arms,val,T,epsilon,bool)

avgrew=0;
% avgMaxRew = 0;
reward=zeros(1,T);
Na=zeros(1,size(arms,2));
% optCount = zeros(1, size(arms,2));
% optMaxRew = zeros(1,T);
optCount = zeros(size(arms,2),T);
for t=1:T-1
    for a=1:size(arms,2)
        arms(a).q=val(t,a);
        arms(a).R(t)=bandit(arms(a));
    end
    %     [a, maxVal, maxInd] = eGreedy(arms,epsilon,t);
    [a] = eGreedy(arms,epsilon,t);
    %     arms(a).R(1,t)=bandit(arms(a));
    Na(a)=Na(a)+1;
    arms(a).N(t)=Na(a);
    %     optCount(maxInd) = optCount(maxInd)+1;
    %     avgMaxRew = avgMaxRew + maxVal;
    %     optMaxRew(1,t) = avgMaxRew/t;
    if t==1
        optCount(a,t) = +1;
    else
        optCount(a,t)=optCount(a,t-1)+1;
        
    end
    if bool == 0
        step = 1/(arms(a).N(t));
    else
        if bool == 1
            step = 1/t;
        end
    end
    arms(a).Q(1,t+1)=arms(a).Q(1,t)+(step)*(arms(a).R(1,t)-arms(a).Q(1,t));
    avgrew=avgrew+ arms(a).R(1,t);
    reward(1,t)=avgrew/t;
    for i=1:size(arms,2)
        if(i ~= a)
            arms(i).Q(1,t+1)=arms(i).Q(1,t);
            if(t>1)
                %arms(i).R(1,t)=arms(i).R(1,t-1);
                optCount(i,t)=optCount(i,t-1);
                arms(i).N(1,t)=arms(i).N(1,t-1);
                
            end
        end
        optCount(i,t+1)=optCount(i,t);
    end
    
end
end
