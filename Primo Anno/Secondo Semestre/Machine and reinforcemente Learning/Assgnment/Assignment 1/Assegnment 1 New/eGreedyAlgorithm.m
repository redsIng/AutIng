function [reward,arms,Na,optCount]=eGreedyAlgorithm(arms,T,eps,value)
avg=0;  %Variable to store means
reward = zeros(1,T); %Cumulative mean reward
n = size(arms,2);
%Initialization in Arm Class
%Loop
for t=2:T
    for i=1:n
        arms(i)=walk(arms(i),t,value,1);
    end
    a = eGreedy(arms,t,eps);
    arms(a).R(1,t)=bandit(arms(a),t);
    arms(a).N(1,t) = arms(a).N(t-1)+1;
    arms(a).Q(1,t) = arms(a).Q(1,t-1)+(1/ t)*(arms(a).R(1,t)-arms(a).Q(1,t-1));
    avg = (avg+arms(a).R(1,t))/t;
    reward(1,t) = avg;
end

end


function action=eGreedy(arm,t,eps)
n=size(arm,2); %Number of bandits
esteem= zeros(1,n); %Q(a) esteems of all bandits
pr = rand;
if pr<eps
    action=randi(size(arm,2)); %Exploring
else
    for i=1:n
        esteem(i) = arm(i).Q(1,t);
    end
    [~,idx]=max(esteem); %Exploiting
    action=idx;
end
end
