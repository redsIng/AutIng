% Definizione parametri assignment 4
% Gianluca Coccia 0300085, Alessandro Lomazzo 0294640
% 01/12/2020

clearvars
close all
clc

% Parametri sistema
a = 1;
x0 = 1;

% Parametri variazione a
amp1 = 1/10;
freq1 = 10;
amp2 = 10;
freq2 = 1/10;

% Parametro modello riferimento
am = 1;

% Parametri stimatori
gammaMRAC = 1;

% Parametri disturbo stato
ampD = 0.1;
freqD = 1/5;