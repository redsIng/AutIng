clear; clc;

%% Parameters

R0 = 2.96;
a0 = 0.9; 
elongation = 1.5;

Rmax = R0 + a0;
Zmax = a0*elongation;

mu0 = 4*pi*1e-7;

I0 = 3e6;
qa = 3;
N0 = 1e20;
T0 = 10e3*1.603e-19;
p0 = N0*T0/5;

Bt = qa*mu0*I0*R0/(2*pi*a0^2);

Bp =  mu0*I0/(2*pi*(a0+elongation/2));

c = 2*Bp/(Rmax^2-R0^2)*4/3;
a = 7/3*c;
b = - Bp/(R0*Zmax);

%%

ds = 0.01;

R = R0 - a0*1.5 : ds : R0 + a0*1.5;
Z = -a0*elongation*1.5:ds:a0*elongation*1.5;
% phi=0:ds:2*pi;
% 
% [R,Z]=rotateCoords(R,Z,phi,a0);
[R,Z] = meshgrid(R,Z);

%%

rho = (R.^2-R0^2)/(2*R0);

%% Psi

Psi = 1/2*(b+c)*R0^2*Z.^2 + c*R0*rho.*Z.^2 + 1/2*(a-c)*R0^2*rho.^2;

%% B poloidal

dPsidR = diff(Psi,[],2)./diff(R,[],2); 
dPsidR = ([dPsidR(:,1) dPsidR] + [dPsidR dPsidR(:,end)])/2;

dPsidZ = diff(Psi,[],1)./diff(Z,[],1); 
dPsidZ = ([dPsidZ(1,:); dPsidZ] + [dPsidZ; dPsidZ(end,:)])/2;

BR = -dPsidZ./R;
BZ = dPsidR./R;

%% J poloidal 

I = (I0^2 - 2*b*R0^2/(4*pi*1e-7).^2*Psi).^0.5;

dIdR = diff(I,[],2)./diff(R,[],2); 
dIdR = ([dIdR(:,1) dIdR] + [dIdR dIdR(:,end)])/2;

dIdZ = diff(I,[],1)./diff(Z,[],1); 
dIdZ = ([dIdZ(1,:); dIdZ] + [dIdZ; dIdZ(end,:)])/2;

jR = 1./R.*dIdZ; 
jZ = -1./R.*dIdR;

%% p 

p = -a/(4*pi^2*4*pi*1e-7).*Psi + p0;
save aaa.mat Psi p
dpdR = diff(p,[],2)./diff(R,[],2); 
dpdR = ([dpdR(:,1) dpdR] + [dpdR dpdR(:,end)])/2;

dpdZ = diff(p,[],1)./diff(Z,[],1); 
dpdZ = ([dpdZ(1,:); dpdZ] + [dpdZ; dpdZ(end,:)])/2;

%%

RW_min = R0 - a0*1.5;
RW_max = R0 + a0*1.2;

ZW_min = -a0*elongation*1.2;
ZW_max = a0*elongation*1.2;

Rl = RW_min : 0.1 : RW_max;
Zl = ZW_min : 0.1 : ZW_max;
Zb = [Zl ones(size(Rl))*max(Zl) Zl ones(size(Rl))*min(Zl)];
Rb = [ones(size(Zl))*min(Rl) Rl ones(size(Zl))*max(Rl) Rl];
%



pb = interp2(R,Z,p,Rb,Zb);
Psib = interp2(R,Z,Psi,Rb,Zb);
BRb = interp2(R,Z,BR,Rb,Zb);
BZb = interp2(R,Z,BZ,Rb,Zb);

figure
clf
subplot(2,3,1)
contourf(R,Z,Psi,40,'LineStyle','none')
hold on
plot(Rb,Zb,'.r','markersize',12)

subplot(2,3,2)
contourf(R,Z,max(p,0),30,'LineStyle','none')
hold on
plot(Rb,Zb,'.r','markersize',12)

subplot(2,3,3)
contourf(R,Z,BR,30,'LineStyle','none')
hold on
plot(Rb,Zb,'.r','markersize',12)

subplot(2,3,4)
contourf(R,Z,BZ,30,'LineStyle','none')
hold on
plot(Rb,Zb,'.r','markersize',12)

%% Select inside wall

Plasma.R = RW_min:0.01:RW_max;
Plasma.Z = ZW_min:0.01:ZW_max;

[Plasma.R, Plasma.Z] = meshgrid(Plasma.R,Plasma.Z); 

Plasma.Psi = interp2(R,Z,Psi,Plasma.R, Plasma.Z);
Plasma.p = interp2(R,Z,p,Plasma.R, Plasma.Z);
Plasma.Br = interp2(R,Z,BR,Plasma.R, Plasma.Z);
Plasma.Bz = interp2(R,Z,BZ,Plasma.R, Plasma.Z);

Boundary.R = Rb;
Boundary.Z = Zb;
Boundary.p = pb; 
Boundary.BR = BRb;
Boundary.BZ = BZb;

Parameters.a = a;
Parameters.b = b;
Parameters.c = c;


figure
clf
subplot(2,3,1)
contourf(Plasma.R,Plasma.Z,Plasma.Psi,40,'LineStyle','none')
colorbar()

subplot(2,3,2)
contourf(Plasma.R,Plasma.Z,Plasma.p,40,'LineStyle','none')
colorbar()

subplot(2,3,4)
contourf(Plasma.R,Plasma.Z,Plasma.Br,40,'LineStyle','none')
colorbar()

subplot(2,3,5)
contourf(Plasma.R,Plasma.Z,Plasma.Bz,40,'LineStyle','none')
colorbar()


save Plasma02.mat

