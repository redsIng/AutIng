function [X0,T0,U0]=initVars(nPoints,space,numConditions)
% Questa classe serve ad inizializzare le variabili in base al tipo di
% PDE che si vuole risolvere
%Condizioni al contorno del problema u(-1,t)=0, u(1,t)=0

x0BC1 = space(1,1)*ones(1,nPoints);
x0BC2 = space(1,2)*ones(1,nPoints);

t0BC1 = linspace(space(2,1),space(2,2),nPoints);
t0BC2 = linspace(space(2,1),space(2,2),nPoints);

u0BC1 = zeros(1,nPoints);
u0BC2 = zeros(1,nPoints);
%Condizioni iniziali del problema u(x,0)=-sin(pi*x)
x0IC = linspace(space(1,1),space(1,2),numConditions);
t0IC = zeros(1,numConditions);
u0IC = -sin(pi*x0IC);
X0 = [x0IC x0BC1 x0BC2];
T0 = [t0IC t0BC1 t0BC2];
U0 = [u0IC u0BC1 u0BC2];
end