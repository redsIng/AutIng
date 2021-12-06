clear all
close all
clc
% Seed of random
rng('default');
%% Multi Armed Bandit Problem
A = 10; % Number of Bandit
T = 1000; % Symulation Time
value = 10; % Mean True Value
eps = [0.0 0.01 0.05 0.1 0.5 0.9]; % Probability of exploration
% trueValue = growth(A,T,1,value); % Random Walks true value
arms(1,1:A) = Arm(T);   % create bandit's instance
% for a=1:A
%     arms(1,a).q= trueValue(a,:);
% end
figure()
for i=1:length(eps)
[R,bandits]=eGreedyAlgorithm(arms,T,eps(i),value);
if i==2
    banditOpt = bandits;
end
plot(1:T,R(1,:));
hold on;
end
legend('e=0','e=0.01','e=0.05','e=0.1','e=0.5','e=0.9');
%%
figure()
rew=zeros(A,T);
q=zeros(A,T);
for i = 1:A
    rew(i,:)=banditOpt(i).R;
end
subplot(1,2,1);
boxplot(rew');

for i = 1:A
    q(i,:)=banditOpt(i).q;
end
subplot(1,2,2);
boxplot(q');
