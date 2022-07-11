close all
clear ; clc; warning off;

%% Get Plasma
R0 = 2.96;
a0 = 0.9; 
elongation = 1.5;
ds=0.01;
dp=0.5;
name=2;
Equilbrium3D(R0,a0,elongation,ds,dp,name); 
%%
load(strcat('Plasma',string(name),'.mat'))
load(strcat('Boundary',string(name),'.mat'))
plotPlasma3D(Plasma)
% clear Parameters
%%
nEpoch=10000;
L=double.empty(nEpoch,0);
%% Domain for plotting
Rp = dlarray(Plasma.R(:)',"CB");
Zp = dlarray(Plasma.Z(:)',"CB");
Phip = dlarray(Plasma.Phi(:)',"CB");
%% Domain for training

Number_Points = 1e5;

points = sobolset(3);
points = net(points,Number_Points);

R = points(:,1);
Z = points(:,2);
Phi = points(:,3);

R = min(Plasma.R(:)) + R*(max(Plasma.R(:))-min(Plasma.R(:)));
Z = min(Plasma.Z(:)) + Z*(max(Plasma.Z(:))-min(Plasma.Z(:)));
Phi = min(Plasma.Phi(:)) + Phi*(max(Plasma.Phi(:))-min(Plasma.Phi(:)));
ds = arrayDatastore([R Z Phi]);

miniBatchSize = 2e3;

mbq = minibatchqueue(ds,...
    MiniBatchSize=miniBatchSize,...
    MiniBatchFormat="BC",...
    OutputEnvironment="auto");

clear points Number_Points ds R Z Phi

%% Boundaries

R0 = dlarray(Boundary.R(:)',"CB");
Z0 = dlarray(Boundary.Z(:)',"CB");
Phi0=dlarray(Boundary.Phi(:)',"CB");
Br0 = dlarray(Boundary.BR(:)',"CB");
Bz0 = dlarray(Boundary.BZ(:)',"CB");
Bt0= dlarray(Boundary.Bt(:)',"CB");
p0 = dlarray(Boundary.p(:)',"CB");
Jr0 = dlarray(Boundary.Jr(:)',"CB");
Jz0=dlarray(Boundary.Jz(:)',"CB");
Jt0=dlarray(Boundary.Jt(:)',"CB");
%% Boundaries in-fin
% Initial
Rin = dlarray(Boundary.R(1:end,1:end,1),"CB");
Zin = dlarray(Boundary.Z(1:end,1:end,1),"CB");
Phiin=dlarray(Boundary.Phi(1:end,1:end,1),"CB");
Brin = dlarray(Boundary.BR(1:end,1:end,1),"CB");
Bzin = dlarray(Boundary.BZ(1:end,1:end,1),"CB");
Btin= dlarray(Boundary.Bt(1:end,1:end,1),"CB");
pin = dlarray(Boundary.p(1:end,1:end,1),"CB");
Jzin = dlarray(Boundary.Jr(1:end,1:end,1),"CB");
Jtin = dlarray(Boundary.Jz(1:end,1:end,1),"CB");
Jrin = dlarray(Boundary.Jt(1:end,1:end,1),"CB");

% Final
Rf = dlarray(Boundary.R(1:end,1:end,end),"CB");
Zf = dlarray(Boundary.Z(1:end,1:end,end),"CB");
Phif =dlarray(Boundary.Phi(1:end,1:end,end),"CB");
Brf = dlarray(Boundary.BR(1:end,1:end,end),"CB");
Bzf = dlarray(Boundary.BZ(1:end,1:end,end),"CB");
Btf = dlarray(Boundary.Bt(1:end,1:end,end),"CB");
pf = dlarray(Boundary.p(1:end,1:end,end),"CB");
Jzf = dlarray(Boundary.Jr(1:end,1:end,end),"CB");
Jtf = dlarray(Boundary.Jz(1:end,1:end,end),"CB");
Jrf = dlarray(Boundary.Jt(1:end,1:end,end),"CB");
%% Build net

X = next(mbq);
X = X(1:3,:);
[X,parameters] = Network01(X,0,[]);

%% Training options

accfun = dlaccelerate(@MDL_PDE_toroidalSymmetry);

%% Pre-training on boundaries

iteration = 0;

alpha = [1 1e-3 1e-2 1 1 1];

averageGrad = [];
averageSqGrad = [];

L0 = 5e-4;
D0 = 1e-5;

%%
for epoch = 1 : nEpoch

    reset(mbq)

    while hasdata(mbq)


        iteration = iteration + 1;

        X = next(mbq);
        R = X(1,:);
        Z = X(2,:);
        Phi = X(3,:);
        [gradients, loss] = dlfeval(accfun,R,Z,Phi,R0,Z0,Phi0,Br0,Bz0,Bt0,p0,...
            parameters,alpha,...
            Rin,Zin,Phiin,Brin,Bzin,Btin,pin,...
            Rf,Zf,Phif,Brf,Bzf,Btf,pf,Jr0,Jz0,Jt0,...
            Jrf,Jzf,Jtf,Jrin,Jzin,Jtin);

        % Update learning rate.
        learningRate = L0./(1 + D0*iteration);

        % Update the network parameters using the adamupdate function.
        [parameters,averageGrad,averageSqGrad] = adamupdate(parameters,gradients,averageGrad, ...
            averageSqGrad,iteration,learningRate);

    end
    L(epoch,1:size(loss,2)) = double(extractdata(gather(loss)));
    if epoch==nEpoch
        savePlasma(Rp,Zp,Phip,loss,Plasma,parameters,name,epoch);

    end


    %disp(learningRate)
    disp(epoch)
end

%%

%%
load(strcat('Trained',string(name),'.mat'))
%%

plotPlasma3D(Plasma)
figure(2)
hold on
plot(L,'o-')
set(gca,'yscale','log')
title("Losses")

