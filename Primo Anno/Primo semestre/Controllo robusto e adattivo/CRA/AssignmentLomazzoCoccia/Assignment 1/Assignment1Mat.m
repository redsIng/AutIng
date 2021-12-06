% Assignment 1 Parametri
% Coccia Gianluca 0300085, Lomazzo Alessandro 0294640
% 10/11/2020

clearvars
close all
clc

% Parametri sistema
a = 1;
b = 2;
sinAmp = 0; %caso a costante
%sinAmp = 0.1; %caso a variabile lentamente nel tempo
sinFreq = (2*pi)/(24*3600); %variazione da testare con stop time alto

% Parametri stimatore
am = 1;