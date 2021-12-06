%% Growth Function for Bandit example
% This function initialize the value of every bandit.
% The value can be initialized both in stationary and
% non-stationary case.

% growth(int #_bandit, max_time T, boolean stat, int value)

function [val,optRew,optNa] = growth(A, T, stat, value)
val = zeros(T,A);
optRew = zeros(1,T);
optNa = zeros(A,T);
avgMaxRew =0;
for t=1:T
    for a = 1:A
        if stat == 1
            % Stationary case
            val(t,a) = value;
        else
            if stat == 0
                % Non stationary case
                %                 var = randi([0, value]);    % variance
                if t == 1
                    val(t,a) = normrnd(value,1);
                else
                    val(t,a) = val(t-1,a)+normrnd(0,1);
                end
                
            end
        end
    end
    [maxVal,maxInd]= max(val(t,:));
    
    for i=1:size(val,2)
        if i == maxInd
            if t==1
                optNa(maxInd,t) = optNa(maxInd,t)+1;
            else
                optNa(maxInd,t) = optNa(maxInd,t-1)+1;
            end
            
        else
            if t~=1
                optNa(i,t) = optNa(i,t-1);
            end
        end
        
    end
    avgMaxRew = avgMaxRew + maxVal;
    optRew(1,t) = avgMaxRew/t;
    
end
