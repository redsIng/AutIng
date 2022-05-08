%% BurgerPDE - Enviroment
% -Dominio: [-1,1]x[0,1] necessario per ottenere dati da simulare e
% affiancare ai vincoli del problema
% -Input: (x,t) con:
%   --x in [-1,1] posizione;
%   --t in [0,1] tempo;
% -Output: Equazione di Burger
% -- d/dt u+u du/dx-0.01/pi d^2u/dx^2=0
% -Condizioni al contorno:
% -- condizione iniziale:
% ---  u(x,0)=-sin(pi/x), u(-1,t)=0  u(1,t)=0
% Vogliamo allenare un modello per cui, dato un input (x,t) l'output della
% rete neurale soffisfa le equazioni di Burger, le condizioni al contorno e
% le condizioni iniziali.
% N.B.: L'allenamento del modello non richiede una collezione di dati già
% calcolati, ma possono essere generati usando la definizioni delle PDE e
% dei vincoli
clc
clear
close all
%% Training Data
% Identificazione del dominio della soluzione della PDE
% Input: nPoints: numero delle condizioni al contorno
%        space: dominio di definizione del problema
%        vars: numero delle variabili per cui generare le condizioni al
%        contorno
%        numConditions: numero di condizioni iniziali
%        netPoints: numeri di punti del training set
space=[-1 1;0 1];
nPoints=25;
numConditions=50;
netPoints=10000;
nLayer = 9;
numNeurons = 20;
input = 2;
output = 1;
epoch = 3000;
batch = 1000;
learnRate = 0.01;
decRate = 0.005;

[X0,T0,U0,ds]=generateData(nPoints,space,numConditions,netPoints);
%% Definizione della rete neurale
netw = Network(nLayer,numNeurons,input,output);
netw.initializeNetwork();
netw.setTrainOpt(epoch,batch,learnRate,decRate);
[X0,T0,U0] = netw.setupTrain([X0,T0,U0],ds);
netw.train(X0,T0,U0);
%% Test Accuracy
tTest = [0.25 0.5 0.75 1];
numPredictions = 1001;
XTest = linspace(-1,1,numPredictions);
netw.tests(tTest,numPredictions,XTest)
