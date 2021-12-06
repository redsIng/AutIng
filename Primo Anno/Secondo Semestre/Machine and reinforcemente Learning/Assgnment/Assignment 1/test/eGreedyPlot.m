function eGreedyPlot(arms, refValue, symTime, avgRew, step_size)
% avg rew plot
figure()
subplot(2,1,1)
T = size(symTime,2);
plot(symTime, refValue*ones(1,T), 'k-')
hold on
for i = 1:6
    plot(symTime, avgRew(i,:));
    hold on
end
tit = "\epsilon-Greedy Algorithm - Sample Average Non-Stationary Step size:" + step_size; 
title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('q_{0}^*','eps = 0','eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9',...
    'location','southeast');
% action counter plot
subplot(2,1,2)
vNa = zeros(10,6);
for i = 1:6
    for j = 1:10
        vNa(j,i) =  arms(j,i).N(T);
    end
end
bar(vNa);
title("Action Counter")
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
xlabel('Bandit Number');
ylabel('Choice Counter');
end