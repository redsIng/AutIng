function [reward,arms,Na,err]=consStep(arms,val,T,epsilon,alpha, bool)
avgrew=0;
reward=zeros(1,T);
Na=zeros(1,size(arms,2));
err=zeros(size(arms,2),T);
for t=1:T
    for a=1:size(arms,2)
        arms(a).q=val(t,a);
    end
    
    
    a=eGreedy(arms,epsilon,t);
    arms(a).R(1,t)=bandit(arms(a));
    arms(a).N=arms(a).N+1;
    Na(a)=Na(a)+1;
    if(bool == 0)
        arms(a).Q(1,t+1)=arms(a).Q(1,t)+(alpha)*(arms(a).R(1,t)-arms(a).Q(1,t));
    else
        if (bool == 1)
            arms(a).Q(1,t+1)=arms(a).Q(1,t)+(1/t)*(arms(a).R(1,t)-arms(a).Q(1,t));
        end
    end
    
    avgrew=avgrew+ arms(a).R(1,t);
    reward(1,t)=avgrew/t;
    for i=1:size(arms,2)
        if(i ~= a)
            arms(i).Q(1,t+1)=arms(i).Q(1,t);
            if(t>1)
                arms(i).R(1,t)=arms(i).R(1,t-1);
            end
        end
    end
end

end
