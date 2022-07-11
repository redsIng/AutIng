function [Rf,Zf,Psi]=Equilbrium3D(R0,a0,elongation,ds,dp,name)
%% Parameters

Rmax = R0 + a0;
Zmax = a0*elongation;
mu0 = 4*pi*1e-7;
I0 = 3e6;
qa = 3;
N0 = 1e20;
T0 = 10e3*1.603e-19;
p0 = N0*T0/5;
% Bt = qa*mu0*I0*R0/(2*pi*a0^2);
Bp =  mu0*I0/(2*pi*(a0+elongation/2));
c = 2*Bp/(Rmax^2-R0^2)*4/3;
a = 7/3*c;
b = - Bp/(R0*Zmax);
%% Spans data 
R = R0 - a0*1.5 : ds : R0 + a0*1.5;
Z = -a0*elongation*1.5:ds:a0*elongation*1.5;
phi=0:dp:2*pi;    
Rf=zeros(numel(Z),numel(R),numel(phi));
Zf=zeros(numel(Z),numel(R),numel(phi));
rho=zeros(numel(Z),numel(R),numel(phi));
Psi =zeros(numel(Z),numel(R),numel(phi));
BR=zeros(numel(Z),numel(R),numel(phi));
BZ=zeros(numel(Z),numel(R),numel(phi));
Bt=zeros(numel(Z),numel(R),numel(phi));
jR=zeros(numel(Z),numel(R),numel(phi));
jZ=zeros(numel(Z),numel(R),numel(phi));
jT=zeros(numel(Z),numel(R),numel(phi));
dPsidR=double.empty(0,0,numel(phi));
dPsidZ=double.empty(0,0,numel(phi));
dIdR=double.empty(0,0,numel(phi));
dIdZ=double.empty(0,0,numel(phi));
dpdR=double.empty(0,0,numel(phi));
dpdZ=double.empty(0,0,numel(phi));
p=zeros(numel(Z),numel(R),numel(phi));
I=zeros(numel(Z),numel(R),numel(phi));
Plasma=struct('R',double.empty(0,0,length(phi)),'Z',double.empty(0,0,length(phi)),...
    'Phi',double.empty(0,0,length(phi)),'Psi',double.empty(0,0,length(phi)),'p',double.empty(0,0,length(phi)),...
    'Br',double.empty(0,0,length(phi)),'Bz',double.empty(0,0,length(phi)),...
    'Bt',double.empty(0,0,length(phi)),'Jr',double.empty(0,0,length(phi)), ...
    'Jz',double.empty(0,0,length(phi)),'Jt',double.empty(0,0,length(phi)));
Boundary =struct('R',double.empty(0,0,length(phi)),'Z',double.empty(0,0,length(phi)),...
    'Phi',double.empty(0,0,length(phi)),'p',double.empty(0,0,length(phi)),'BR',double.empty(0,0,length(phi)),...
    'BZ',double.empty(0,0,length(phi)),'Bt',double.empty(0,0,length(phi)), ...
    'Jr',double.empty(0,0,length(phi)), ...
    'Jz',double.empty(0,0,length(phi)),'Jt',double.empty(0,0,length(phi)));

RW_min = R0 - a0*1.5;
RW_max = R0 + a0*1.2;

ZW_min = -a0*elongation*1.2;
ZW_max = a0*elongation*1.2;

Rl = RW_min : 0.1 : RW_max;
Zl = ZW_min : 0.1 : ZW_max;
Phil = 0:dp:2*pi;

Zbphi=double.empty(0,2*size(Zl,2)+2*size(Rl,2),size(Phil,2));
Rbphi=double.empty(0,2*size(Zl,2)+2*size(Rl,2),size(Phil,2));



for idp=1:length(phi)
    [Rtempv,Ztempv]=meshgrid(R,Z);
    Rf(:,:,idp)=Rtempv;
    Zf(:,:,idp)=Ztempv;
    rho(:,:,idp)=(Rf(:,:,idp).^2-R0^2)/(2*R0);
    %% Psi
    Psi(:,:,idp) = 1/2*(b+c)*R0^2*Zf(:,:,idp).^2 + c*R0*rho(:,:,idp).*Zf(:,:,idp).^2 + 1/2*(a-c)*R0^2*rho(:,:,idp).^2;
    %% J poloidal 

 I(:,:,idp) = (I0^2 - 2*b*R0^2/(4*pi*1e-7).^2*Psi(:,:,idp)).^0.5;
 didr = diff(I(:,:,idp),[],2)./diff(Rf(:,:,idp),[],2); 
 temp=([didr(:,1) didr] + [didr didr(:,end)])/2;
 dIdR(1:size(temp,1),1:size(temp,2),idp) = temp;
 
 didz = diff(I(:,:,idp),[],1)./diff(Zf(:,:,idp),[],1); 
 temp = ([didz(1,:); didz] + [didz; didz(end,:)])/2;
 dIdZ(1:size(temp,1),1:size(temp,2),idp) = temp;
 
 jR(:,:,idp) = 1./Rf(:,:,idp).*dIdZ(:,:,idp); 
 jZ(:,:,idp) = -1./Rf(:,:,idp).*dIdR(:,:,idp);
 %
 jT(:,:,idp)= -(b*R0^2)./(2*pi*Rf(:,:,idp).*mu0)-(a.*Rf(:,:,idp))/(2*pi*mu0);
    %% B poloial
    
    dpsisr = diff(Psi(:,:,idp),[],2)./diff(Rf(:,:,idp),[],2); 
    temp =([dpsisr(:,1) dpsisr] + [dpsisr dpsisr(:,end)])/2;
    dPsidR(1:size(temp,1),1:size(temp,2),idp) = temp;

    dpsidz=diff(Psi(:,:,idp),[],1)./diff(Zf(:,:,idp),[],1); 
    temp=([dpsidz(1,:); dpsidz] + [dpsidz; dpsidz(end,:)])/2;
    dPsidZ(1:size(temp,1),1:size(temp,2),idp) = temp;

    BR(:,:,idp) = -dPsidZ(:,:,idp)./Rf(:,:,idp);
    BZ(:,:,idp) = dPsidR(:,:,idp)./Rf(:,:,idp);
    %Bt(:,:,idp) = mu0./(2*pi.*Rf(:,:,idp)).*I(:,:,idp);%qa*mu0*I0*R0/(2*pi*a0^2);
    Bt(:,:,idp) =qa*mu0*I(:,:,idp).*R0./(2*pi*a0^2);
    %% p 

p(:,:,idp) = -a/(4*pi^2*4*pi*1e-7).*Psi(:,:,idp) + p0;

dpdr = diff(p(:,:,idp),[],2)./diff(Rf(:,:,idp),[],2); 
temp=([dpdr(:,1) dpdr] + [dpdr dpdr(:,end)])/2;
dpdR(1:size(temp,1),1:size(temp,2),idp) = temp;

dpdz = diff(p(:,:,idp),[],1)./diff(Zf(:,:,idp),[],1);
temp=([dpdz(1,:); dpdz] + [dpdz; dpdz(end,:)])/2;
dpdZ(1:size(temp,1),1:size(temp,2),idp) = temp;

Zbphi(1,:,idp) = [Zl ones(size(Rl))*max(Zl) Zl ones(size(Rl))*min(Zl)];
Rbphi(1,:,idp) = [ones(size(Zl))*min(Rl) Rl ones(size(Zl))*max(Rl) Rl];

pb = interp2(Rf(:,:,idp),Zf(:,:,idp),p(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
Psib = interp2(Rf(:,:,idp),Zf(:,:,idp),Psi(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
BRb = interp2(Rf(:,:,idp),Zf(:,:,idp),BR(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
BZb = interp2(Rf(:,:,idp),Zf(:,:,idp),BZ(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
Btb = interp2(Rf(:,:,idp),Zf(:,:,idp),Bt(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
Jrb = interp2(Rf(:,:,idp),Zf(:,:,idp),jR(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
Jzb = interp2(Rf(:,:,idp),Zf(:,:,idp),jZ(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));
Jtb = interp2(Rf(:,:,idp),Zf(:,:,idp),jT(:,:,idp),Rbphi(1,:,idp),Zbphi(1,:,idp));


%% Select inside wall


PlasmaRintv=RW_min:ds:RW_max;
PlasmaZintv =ZW_min:ds:ZW_max;

[X,Y]= meshgrid(PlasmaRintv,PlasmaZintv); 
Plasma.R(1:size(X,1),1:size(X,2),idp)=  X;
Plasma.Z(1:size(Y,1),1:size(Y,2),idp)= Y;
Plasma.Phi(1:size(Y,1),1:size(Y,2),idp)=phi(idp)*ones(size(Y,1),size(Y,2));

Plasma.Psi(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),Psi(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.p(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),p(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Br(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),BR(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Bz(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),BZ(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Bt(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),Bt(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Jr(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),jR(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Jz(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),jZ(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));
Plasma.Jt(1:size(X,1),1:size(X,2),idp) = interp2(Rf(:,:,idp),Zf(:,:,idp),jT(:,:,idp),Plasma.R(:,:,idp), Plasma.Z(:,:,idp));


Boundary.R(1,1:size(Rbphi(end,:,idp),2),idp) = Rbphi(end,:,idp);

Boundary.Z(1,1:size(Zbphi(end,:,idp),2),idp) = Zbphi(end,:,idp);
Boundary.p(1,1:size(pb,2),idp) = pb;
Boundary.BR(1,1:size(pb,2),idp) = BRb;
Boundary.BZ(1,1:size(pb,2),idp) = BZb;
Boundary.Bt(1,1:size(pb,2),idp) = Btb;
Boundary.Jr(1,1:size(pb,2),idp) = Jrb;
Boundary.Jz(1,1:size(pb,2),idp) = Jzb;
Boundary.Jt(1,1:size(pb,2),idp) = Jtb;
Boundary.Psi(1,1:size(pb,2),idp) = Psib;

Boundary.Phi(1,1:size(Boundary.R,2),idp) = phi(idp)*ones(1,size(Rbphi(end,:,idp),2));
Parameters.a = a;
Parameters.b = b;
Parameters.c = c;

end
BoundFile="Boundary"+name+".mat";
ParamFile="Parameters"+name+".mat";
PlasmaFile="Plasma"+name+".mat";
save( BoundFile, 'Boundary')
save(ParamFile, 'Parameters')
save(PlasmaFile, 'Plasma')
end
