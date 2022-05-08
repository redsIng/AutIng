function [X0,T0,U0,ds]=generateData(nPoints,space,numConditions,netPoints)
nBoundaryConditions=[nPoints nPoints];
[X0,T0,U0]=initVars(nPoints,space,numConditions);
% Costruzione Struttura training set
pointSet=sobolset(2); %Generatore di punti di training quasi-random dim=2
points = net(pointSet,netPoints);
dataX = 2*points(:,1)-1;%???
dataT = points(:,2);
ds = arrayDatastore([dataX dataT]);

end