%% Assignment 6 - Lorenzo Rossi Matricola: 0301285

clc
clear
close all
%%
k=[1 1.5 5/3 2.5 3];
n = length(k);

%% Valutazione Stabilità Robusta e Prestazioni robuste
lgdStr = compose('%g',k);
hold on
for i =1: n
    W2T=tf([0 2*k(i)],[1 k(i)+9 10*k(i)-10]);
    W1S=tf([1 -1],[1 k(i) k(i)-1]);
    figure(2)
    bode(W2T);
    legend(lgdStr)
    hold on
    
    figure(3)
    nyquist(W2T)
    hold on

    figure(4)
    bode(W1S);
    legend(lgdStr)
    hold on
%     pause()
end
%% Prestazioni robuste: alpha min
syms k alpha(k)
figure(5)
alpha(k) = 5/(3*k-5);
fplot(alpha,[1 60])
hold on
plot(5/3,0,'*')
xlabel('k')
ylabel('a')
ylim([0 Inf])
title('k vs alpha')