function PreferencePlot(arms, refValue, symTime, avgRew, preferences)
% avg rew plot
figure()
subplot(2,3,1)
T = size(symTime,2);
    for i = 1:6
    plot(symTime, avgRew(i,:));
    hold on
    end
plot(symTime, refValue*ones(1,T), 'k-')

tit = "Preference Update Algorithm"; 
title(tit);
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('\alpha = 0.01', '\alpha = 0.05','\alpha = 0.08',...
    '\alpha = 0.5','\alpha = 0.8','\alpha = 1','q_{0}^*','location','southeast');
% Preference plot
subplot(2,3,[2 3])
Ha = zeros(10,6);
for i = 1:6
    for j = 1:10
        Ha(j,i) =  arms(j,i).H(T);
    end
end
bar(Ha);
title("Preference Counter")
legend('\alpha = 0.01', '\alpha = 0.05','\alpha = 0.08',...
    '\alpha = 0.5','\alpha = 0.8','\alpha = 1')
xlabel('Bandit Number');
ylabel('Choice Counter');

% action counter plot
subplot(2,3,[4 5])
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