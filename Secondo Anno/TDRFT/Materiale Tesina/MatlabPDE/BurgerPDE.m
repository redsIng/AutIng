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


