% function eGreedyPlot(symTime, val, R,...
%     vNa, arms,optCount,optReward, code)
function eGreedyPlot(symTime, val, R,vNa, Arms,optRew,percentageOpt,code)
if code == 1
    tit = '\epsilon-Greedy Algorithm - Sample Average Stationary';
else
    if code == 2
        tit = '\epsilon-Greedy Algorithm - Sample Average Non-Stationary';
    end
end

figure('Name','Ricompense,distribuzioni,decisioni e percentuali ottime')
% Rewards
scrollsubplot(2,2,1)
% vColor = ['g-', 'r-','m-','b-','c-','y-','k-'];
plot(symTime, optRew,'k-');
hold on
for i = 1:size(R,1)
    plot(symTime,R(i,:));
    hold on;
end

title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');



%% Action Counters
scrollsubplot(2,2,2)
tit = 'Decision Counter for \epsilon-Greedy Algorithm';
bar(vNa');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');

%% Optimal Reward
scrollsubplot(2,2,3);
yline(100);
hold on;
% plot(symTime,symTime);
for i = 1: size(percentageOpt,1)
    plot(symTime,percentageOpt(i,:));
    hold on;
end
title('% Optimal Actions');
xlabel('time');
ylabel('% Action');
legend('optim','eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');

%% Rewards Distribution
N = size(Arms,2);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=Arms(2,i).R;
end
scrollsubplot(2,2,4)
boxplot(q');
title('Rewards Distribution for \epsilon =  0.01');
xlabel('Bandit');
ylabel('Rewards');



%% Convergence
epsilon = [0.0, 0.01, 0.05, 0.1, 0.5, 0.9];


% for i =1:size(epsilon,2)
i=2;
k=1;
figure('Name',"Convergenze Bandits - epsilon="+epsilon(i));
for j =1:size(Arms,2)
    scrollsubplot(2,2,k);
    plot(symTime,val(:,j)','-k');
    hold on;
    plot(symTime,Arms(i,j).Q(1,:));
    hold on;
    title("\epsilon ="+epsilon(1,i)+"Arm"+j);
    xlabel("Time");
    ylabel("Esteems");
    legend("q("+j+")","Q("+j+")");
    k=k+1;
end
% end
%%



% Esteems
% subplot(2,2,4)
% scrollsubplot(1,1,1)
% tit = "Esteem of actual action's value" ;
% for i = 1:N
%     plot(symTime, arms(i).Q(1,:));
%     hold on
%     plot(symTime, ones(1,length(symTime)*arms(i).q), '-k');
%     hold on
% end
% scrollsubplot(1,1,2)
% tit = "Esteem of actual action's value" ;
% for i = 1:N
%     plot(symTime, arms(i).Q(1,:));
%     hold on
%     plot(symTime, ones(1,length(symTime)*arms(i).q), '-k');
%     hold on
% end
end
