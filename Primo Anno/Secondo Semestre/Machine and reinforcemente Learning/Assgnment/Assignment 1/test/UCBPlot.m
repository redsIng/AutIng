function UCBPlot(arms, refValue, symTime, avgRew)
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
tit = "UCB Algorithm"; 
title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('q_{0}^*','c = 1','c = 10','c = 100','c = 1e3','c = 1e4','c = 1e5',...
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
legend('c = 1','c = 10','c = 100','c = 1e3','c = 1e4','c = 1e5')
xlabel('Bandit Number');
ylabel('Choice Counter');
end