clc
clear all
close all
%% MAB
A=10;
T=10000;
arms(1,1:A)=Arm(T);
val=growth(A,T);
epsilon=0.01;
% [R,arms1,Na]=eGreedyAlgorithm(arms,val,T,epsilon);
% alpha = 1/k
[R,arms1,Na]=UCB(arms,val,T,10,0.01);
% [R,arms1,Na]=prefUpdate(arms,val,T,1);
subplot(3,3,1);

plot((1:T),R(1,:),'r-');
hold on;
epsilon=0.05;
[R1,arms2,Na1,error]=eGreedyAlgorithm(arms,val,T,epsilon);
plot((1:T),R1(1,:),'b-');
hold on;

epsilon=0.5;
[R2,arms3,Na2]=eGreedyAlgorithm(arms,val,T,epsilon);
plot((1:T),R2(1,:),'m-');
hold on;

epsilon=0.8;
[R3,arms4,Na3]=eGreedyAlgorithm(arms,val,T,epsilon);
plot((1:T),R3(1,:),'c-');
hold on;
legend('eps = 0.01','eps = 0.05','eps = 0.5','eps = 0.8')
%% Decisions
subplot(3,3,2);
bar(Na');
hold on;
% bar(Na1');
% hold on;
% bar(Na3');
% hold on;
%% Rewards
rewards=zeros(A,T);
subplot(3,3,3);
for a=1:A
    rewards(a,:)=arms1(a).R;
    hold on;
end
boxplot(rewards');

%% Convergence
subplot(3,3,4);
counters = zeros(1,a);
for i = 1:a
    counters(i) = arms1(i).N;
end
[~,g] = max(counters);
plot(1:T,arms1(g).Q(1,1:T),'r-');hold on;
plot(1:T,val(:,g),'g-');hold on;
title("Stima Q(a) e valore vero q^*")
legend('Q','q^*')

%% Error
%  subplot(3,3,5);
%  plot(1:T,error(1,:)');
%% Growth Function
function val=growth(A,T)
val = zeros(T,A);
for t=2:T
    for a=1:A
        %         Stationary case
%         val(t,a)=2;
        %         Non stationary case
                val(t,a)=val(t-1,a)+normrnd(0,1);
    end
end
end
