function eGreedyConstPlot(symTime, val, R,...
    vNa, arms)

% Rewards
figure()
vColor = ['r-','b-','g-','m-','c-','y-','k-'];
subplot(3,3,1)
for i = 1:size(R,1)
    plot(symTime,R(i,:,1), vColor(i));
    hold on
end

plot(symTime, val, 'k-');
title('\epsilon-Greedy Algorithm - Constant Step \alpha = 0');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');

subplot(3,3,2)
for i = 1:size(R,1)
    plot(symTime,R(i,:,2), vColor(i));
    hold on
end

plot(symTime, val, 'k-');
title('\epsilon-Greedy Algorithm - Constant Step \alpha = 0.5');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');

subplot(3,3,3)
for i = 1:size(R,1)
    plot(symTime,R(i,:,3), vColor(i));
    hold on
end
plot(symTime, val, 'k-');
title('\epsilon-Greedy Algorithm - Constant Step \alpha = 1');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
% Rewards Distribution
arms_star1 = arms(2,:,1);
N = size(arms_star1,2);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star1(i).R;
end
subplot(3,3,4)
boxplot(q');
title('Rewards Distribution for \epsilon =  0.01');
xlabel('Bandit');
ylabel('Rewards');
arms_star2 = arms(2,:,2);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star2(i).R;
end
subplot(3,3,5)
boxplot(q');
title('Rewards Distribution for \epsilon =  0.01');
xlabel('Bandit');
ylabel('Rewards');
arms_star3 = arms(2,:,3);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star3(i).R;
end
subplot(3,3,6)
boxplot(q');
title('Rewards Distribution for \epsilon =  0.01');
xlabel('Bandit');
ylabel('Rewards');

% Action Counters
subplot(3,3,7)
tit = 'Decision Counter for \epsilon-Greedy Algorithm';
bar(vNa(:,:,1)');
legend('c = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');
subplot(3,3,8)
bar(vNa(:,:,2)');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');
subplot(3,3,9)
bar(vNa(:,:,3)');
legend('eps = 0', 'eps = 0.01','eps = 0.05','eps = 0.1','eps = 0.5','eps = 0.9');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');

end