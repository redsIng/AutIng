function eGreedyPlot(arms, refValue, symTime,...
    avgRew, argMaxs, actualChoices,step_size)
% avg rew plot
figure()
subplot(3,3,1)
T = size(symTime,2);
for i = 1:6
    plot(symTime, avgRew(i,:));
    hold on
end
plot(symTime, refValue*ones(1,T), 'k-')
tit = "\epsilon-Greedy Algorithm - Sample Average Non-Stationary Step size:" + step_size;
title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('eps = 0','eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9',...
    'q_{0}^*','location','southeast');
% action counter plot
subplot(3,3,[2 3])
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
% optimality
e = [0, 0.01, 0.05, 0.1, 0.5, 0.9];

for i = 1:6
    subplot(3,3,i+3)
    plot(symTime, argMaxs(i,:), '-')
    hold on
    plot(symTime, actualChoices(i,:),'*')
    xlabel("Simulation Time");
    ylabel("Selected Bandit");
    opt = optimal(argMaxs(i,:),actualChoices(i,:));
    text = "Optimality for \epsilon = " + e(i) + " is " + opt;
    title(text)
    legend('Optimal Choices','Selected Choices');
end
end

function opt = optimal(argMax, actualChoice)
[maxMode, maxFreq] = mode(argMax);
[choiceMode, choiceFreq] = mode(actualChoice);
opt = choiceFreq/maxFreq *100;
end