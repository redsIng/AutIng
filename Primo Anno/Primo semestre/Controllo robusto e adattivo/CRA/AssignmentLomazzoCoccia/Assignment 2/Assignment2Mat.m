% Parametri Assignment 2
% Coccia Gianluca 0300085,Lomazzo Alessandro 0294640
% 18/11/2020

clearvars
close all
clc

% Parametri a b.
a = 0.4;
b = 0.4;

% Parametrizzazione
lambda = 5;
gammaMat = [50 0
            0 50];
gammaMatD = [50 0 
             0 50];
%Filtri H
H1_num = [1];
H1_den = [1 1];
H2_num = [2];
H2_den = [1 2];

%Input
stepAmp = 10;
sineAmp = 10;
sineFreq = 5/2;