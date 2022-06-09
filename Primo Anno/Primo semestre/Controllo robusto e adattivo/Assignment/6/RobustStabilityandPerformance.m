%% Assignment 6 - Lorenzo Rossi Matricola: 0301285

clc
clear
close all

%% Stabilità Nominale
ks=[0.1 0.5 1 2 10];
ns = length(ks);
lgdStr = compose('%g',k);

for i = 1:ns
    S = tf([ks(i)],[1 -1/ks(i)]);

    figure(1)
    clf
    rlocusplot(S);grid on
    hold on
    legend(lgdStr{1,1:i})


end

%%
k=[1 1.5 5/3 2.5];
n = length(k);
P = tf(1,[1 -1]);

%% Stabiliytà Robuste
subplot(4,2,1)
W2T=tf([1 -1],[1 k(1) k(1)-1]);
h=bodeplot(W2T);
setoptions(h,'PhaseVisible','off')
title('W2T-k=1')
subplot(4,2,2)
nyquist(k(1)*P)


subplot(4,2,3)
W2T=tf([0 2*k(2)],[1 k(2)+9 10*k(2)-10]);
h=bodeplot(W2T);
setoptions(h,'PhaseVisible','off')
title('W2T-k=1.5')
subplot(4,2,4)
nyquist(k(2)*P)


subplot(4,2,5)
W2T=tf([0 2*k(3)],[1 k(3)+9 10*k(3)-10]);
h=bodeplot(W2T);
setoptions(h,'PhaseVisible','off')
title('W2T-k=5/3')
subplot(4,2,6)
nyquist(k(3)*P)


subplot(4,2,7)
W2T=tf([0 2*k(4)],[1 k(4)+9 10*k(4)-10]);
h=bodeplot(W2T);
setoptions(h,'PhaseVisible','off')
title('W2T-k=2.5')
subplot(4,2,8)
nyquist(k(4)*P)
%% Prestazioni Robuste

subplot(4,1,1)
W1S=tf([1 -1],[1 k(1) k(1)-1]);h=bodeplot(W1S);
setoptions(h,'PhaseVisible','off')
title('W1S-k=1')


subplot(4,1,2)
W1S=tf([1 -1],[1 k(2) k(2)-1]);h=bodeplot(W1S);
setoptions(h,'PhaseVisible','off')
title('W1S-k=1.5')

subplot(4,1,3)
W1S=tf([1 -1],[1 k(2) k(2)-1]);h=bodeplot(W1S);
setoptions(h,'PhaseVisible','off')
title('W1S-k=5/3')

subplot(4,1,4)
W1S=tf([1 -1],[1 k(3) k(3)-1]);h=bodeplot(W1S);
setoptions(h,'PhaseVisible','off')
title('W1S-k=2.5')
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