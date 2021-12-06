function [reward,arms,Na]=UCB(arms,val,rew, T,c,alpha,Q_start)
avgrew=0;
reward=zeros(1,T);
Na=zeros(1,size(arms,2));
for i=1:size(arms,2)
%     arms(i).Q(1,1) = randi([Q_start,5*Q_start]);
    arms(i).Q(1,1) = Q_start;

end

for t=1:T
    for a=1:size(arms,2)
        arms(a).q=val(t,a);
        arms(a).R(t)=rew(t,a);
    end
    % get esteem value for every action at time t
    for a=1:size(arms,2)
        avg=arms(a).Q(1,t);
        if arms(a).N == 0
            Q(1,a) = avg;
        else
            Q(1,a)=avg + c*sqrt(log(t)/arms(a).N);
        end
    end
    [~,a]=max(Q);
    arms(a).R(1,t)=bandit(arms(a),t);
    arms(a).N=arms(a).N+1;
    Na(a)=Na(a)+1;
    
    arms(a).Q(1,t+1)=arms(a).Q(1,t)+(alpha)*(arms(a).R(1,t)-arms(a).Q(1,t));
    
    avgrew=avgrew+ arms(a).R(1,t);
    reward(1,t)=avgrew/t;
    for i=1:size(arms,2)
        if(i ~= a)
            arms(i).Q(1,t+1)=arms(i).Q(1,t);
%             if(t>1)
%                 arms(i).R(1,t)=arms(i).R(1,t-1);
%             end
        end
    end
end

end
