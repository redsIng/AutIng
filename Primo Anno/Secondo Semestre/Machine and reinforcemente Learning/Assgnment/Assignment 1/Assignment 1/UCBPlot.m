function UCBPlot(symTime, val, R, vNa, arms)

% Rewards
figure()
subplot(3,3,1)
for i = 1:size(R,1)
    plot(symTime,R(i,:,1));
    hold on
end

plot(symTime, val, 'k-');
title('UCB Algorithm \alpha = 0');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');

subplot(3,3,2)
for i = 1:size(R,1)
    plot(symTime,R(i,:,2));
    hold on
end

plot(symTime, val, 'k-');
title('UCB Algorithm\alpha = 0.5');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');

subplot(3,3,3)
for i = 1:size(R,1)
    plot(symTime,R(i,:,3));
    hold on
end
plot(symTime, val, 'k-');
title('UCB Algorithm \alpha = 1');
xlabel("Simulation Time");
ylabel('Rewards at time t');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');
% Rewards Distribution
arms_star1 = arms(2,:,1);
N = size(arms_star1,2);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star1(i).R;
end
subplot(3,3,4)
boxplot(q');
title('Rewards Distribution for UCB c =  1000');
xlabel('Bandit');
ylabel('Rewards');
arms_star2 = arms(2,:,2);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star2(i).R;
end
subplot(3,3,5)
boxplot(q');
title('Rewards Distribution for UCB c =  1000');
xlabel('Bandit');
ylabel('Rewards');
arms_star3 = arms(2,:,3);
q = zeros(N,size(symTime,2));
for i = 1:N
    q(i,:)=arms_star3(i).R;
end
subplot(3,3,6)
boxplot(q');
title('Rewards Distribution for UCB c =  1000');
xlabel('Bandit');
ylabel('Rewards');

% Action Counters
subplot(3,3,7)
tit = 'Decision Counter for UCB Algorithm';
bar(vNa(:,:,1)');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');
subplot(3,3,8)
tit = 'Decision Counter for UCB Algorithm';
bar(vNa(:,:,2)');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');
subplot(3,3,9)
tit = 'Decision Counter for UCB Algorithm';
bar(vNa(:,:,3)');
legend('c = 0', 'c = 200','c = 400','c = 600','c = 800','c = 1000');
title(tit)
xlabel('Bandit Number');
ylabel('Choice Counter');

end