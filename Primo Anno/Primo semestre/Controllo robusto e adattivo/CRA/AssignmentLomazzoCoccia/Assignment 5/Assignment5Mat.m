% Definizione parametri assignment 5
% Gianluca Coccia 0300085, Alessandro Lomazzo 0294640
% 17/12/2020

clearvars
close all
clc

% Parametri r
E1 = 1;
E2 = 1;
freq1 = 5;
freq2 = 1;

% Parametrizzazione
lambda = 2; %poichè Lambda(s)=s+2
gammaMat = [10 0 0 0
            0 10 0 0
            0 0 10 0
            0 0 0 10];