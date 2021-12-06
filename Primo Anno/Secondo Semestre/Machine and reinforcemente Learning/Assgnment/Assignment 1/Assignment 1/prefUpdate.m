function [reward,arms,Na,Ha] = prefUpdate(arms,val,rew,T,alpha)
avgrew=0;
reward=zeros(1,T);
Na=zeros(1,size(arms,2));
Ha = zeros(size(arms,2),T);
% for i=1:size(arms,2)
%     arms(i).H = randi([1,10]);
% end

for t=1:T
    for a=1:size(arms,2)
        arms(a).q=val(t,a);
        arms(a).R(1,t)=rew(t,a);
        
    end
    % get esteem value for every action at time t
    
    [P,a] = preference(arms);
    arms(a).R(1,t)=bandit(arms(a),t);
    arms(a).N=arms(a).N+1;
    Na(a)=Na(a)+1;
    %     arms(a).Q(1,t+1)=arms(a).Q(1,t)+(alpha)*(arms(a).R(1,t)-arms(a).Q(1,t));
    
    avgrew=avgrew+ arms(a).R(1,t);
    reward(1,t)=avgrew/t;
%     for i=1:size(arms,2)
%         if(i ~= a)
%             %             arms(i).Q(1,t+1)=arms(i).Q(1,t);
%             if(t>1&&R(1,t-1))
%                 arms(i).R(1,t)=arms(i).R(1,t-1);
%             end
%         end
%     end
    % H_t+1(At)
    arms(a).H = arms(a).H+(alpha)*(arms(a).R(1,t)-reward(1,t))*(1-P);
    for i=1:size(arms,2)
        if i~=a
            arms(i).H = arms(i).H+(alpha)*(arms(i).R(1,t)-reward(1,t))*(P);
        end
        Ha(i,t) = arms(i).H;
    end
end

end
