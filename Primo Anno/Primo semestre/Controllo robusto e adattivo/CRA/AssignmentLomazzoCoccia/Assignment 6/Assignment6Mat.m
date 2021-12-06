% Assignment 6
% Gianluca Coccia 0300085, Alessandro Lomazzo 0294640
% 04/01/2020

clearvars
close all
clc

K = 1:10;
for k=K  
W2T = tf([2*k] , [1, 9+k, 10*(k-1)]);
figure(1)
hold on;
bode(W2T);
figure(2);
hold on;
nyquist(W2T);

W1S = tf([1, -1] , [1, k, k-1]);
figure(3);
hold on;
bode(W1S);
figure(4);
hold on;
nyquist(W1S);

figure(5);
hold on;
bode(W1S / (1+2*W2T));
end