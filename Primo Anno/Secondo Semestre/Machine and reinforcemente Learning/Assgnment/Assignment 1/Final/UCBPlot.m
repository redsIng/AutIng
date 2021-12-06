function UCBPlot(arms, refValue, symTime,...
    avgRew, argMaxs, actualChoices)
% avg rew plot
figure()
subplot(3,3,1)
T = size(symTime,2);
for i = 1:6
    plot(symTime, avgRew(i,:));
    hold on
end
plot(symTime, refValue*ones(1,T), 'k-')
tit = "UCB Algorithm"; 
title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('c = 1','c = 10','c = 100','c = 1e3','c = 1e4','c = 1e5',...
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
legend('c = 1','c = 10','c = 100','c = 1e3','c = 1e4','c = 1e5')
xlabel('Bandit Number');
ylabel('Choice Counter');
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
c = [1, 10, 100, 1e3, 1e4, 1e5];
for i = 1:6
    subplot(3,3,i+3)
    plot(symTime, argMaxs(i,:), '-')
    hold on
    plot(symTime, actualChoices(i,:),'*')
    xlabel("Simulation Time");
    ylabel("Selected Bandit");
    opt = optimal(argMaxs(i,:),actualChoices(i,:));
    text = "Optimality for c = " + c(i) + " is " + opt;
    title(text)
    legend('Optimal Choices','Selected Choices');
end
end

function opt = optimal(argMax, actualChoice)
[maxMode, maxFreq] = mode(argMax);
[choiceMode, choiceFreq] = mode(actualChoice);
opt = choiceFreq/maxFreq *100;
end