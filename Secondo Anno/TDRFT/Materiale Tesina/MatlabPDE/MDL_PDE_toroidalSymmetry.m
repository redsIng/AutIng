%% Model gradient - PDE plasma classico toroidal symmetry

function [gradients,loss_v] = MDL_PDE_toroidalSymmetry(R,Z,Phi,R0,Z0,Phi0,Br0,Bz0,Bt0,p0,parameters,alpha,...
                                                                            Rin,Zin,Phiin,Brin,Bzin,Btin,pin,...
                                                                            Rf,Zf,Phif,Brf,Bzf,Btf,pf,...
                                                                            Jr0,Jt0,Jz0)

    X = [R;Z;Phi];
    
    X = Network01(X,1,parameters);
    
    Br = X(1,:);
    Bz = X(2,:);
    Bt = X(3,:);

    Jr = X(4,:);
    Jt = X(5,:);
    Jz = X(6,:);

    p = X(7,:);
    
    %% calculate derivatives

    divBr = dlgradient(sum(Br,'all'),{R,Z,Phi},EnableHigherDerivatives=true);
    dBrdR = divBr{1};
    dBrdZ = divBr{2};
    dBrdP = divBr{3};

    divBz = dlgradient(sum(Bz,'all'),{R,Z,Phi},EnableHigherDerivatives=true);
    dBzdR = divBz{1};
    dBzdZ = divBz{2};
    dBzdP = divBz{3};

    divBt = dlgradient(sum(Bt,'all'),{R,Z,Phi},EnableHigherDerivatives=true);
    dBtdR = divBt{1};
    dBtdZ = divBt{2};
    dBtdP = divBt{3};

    divp = dlgradient(sum(p,'all'),{R,Z,Phi},EnableHigherDerivatives=true);
    dpdR = divp{1};
    dpdZ = divp{2};
    dpdP = divp{3};

    dRBrdR = dlgradient(sum(R.*Br,'all'),R,EnableHigherDerivatives = true);
    
    dRBtdR = dlgradient(sum(R.*Bt,'all'),R,EnableHigherDerivatives = true); 
    
    %% div(B) = 0

    f1 = (1./R).*dRBrdR + dBzdZ+(1./R).*dBtdP;

    loss1 = mean(f1.^2);

    %% rot(B) = u0J

    mu0 = 4*pi*1e-7;

    f2a = 1./R.*dBzdP-dBtdZ - mu0*Jr;
    f2b = dBrdZ - dBzdR - mu0*Jt;
    f2c = (1./R).*(dRBtdR-dBrdP) - mu0*Jz;

    loss2 = mean(f2a.^2) + mean(f2b.^2) + mean(f2c.^2);

    %% JxB = grad(p)

    f3a = Jt.*Bz - Jz.*Bt - dpdR;
    f3b = Jz.*Br - Jr.*Bz-dpdP;
    f3c = Jr.*Bt - Jt.*Br - dpdZ;

    loss3 = (mean(f3a.^2) + mean(f3b.^2) + mean(f3c.^2))/1e14;

    %% Boundaries
    

    X = Network01([R0;Z0;Phi0],1,parameters);

    Br = X(1,:);
    Bt = X(2,:);
    Bz = X(3,:);

    Jr = X(4,:);
    Jt = X(5,:);
    Jz = X(6,:);

    p = X(7,:);

    loss_b = mean((p-p0).^2)./mean(p0.^2) + mean((Bz - Bz0).^2)./mean(Bz0).^2 +...
        mean((Br - Br0).^2)./mean(Br0.^2)+  mean((Bt - Bt0).^2)./mean(Bt0.^2)+...
        mean((Jr-Jr0).^2)./mean(Jr.^2)+ mean((Jz-Jz0).^2)./mean(Jz.^2)+...
          mean((Jt-Jt0).^2)./mean(Jt0.^2);
    %% Final
    X = Network01([Rf;Zf;Phif],1,parameters);

    Br = X(1,:);
    Bt = X(2,:);
    Bz = X(3,:);

    Jr = X(4,:);
    Jt = X(5,:);
    Jz = X(6,:);

    p = X(7,:);

    loss_f = mean((p-pf).^2)./mean(pf.^2) + mean((Bz - Bzf).^2)./mean(Bzf).^2 ...
        +  mean((Br - Brf).^2)./mean(Brf.^2)+  mean((Bt - Btf).^2)./mean(Btf.^2);
    %% Initial
    X = Network01([Rin;Zin;Phiin],1,parameters);

    Br = X(1,:);
    Bt = X(2,:);
    Bz = X(3,:);

    Jr = X(4,:);
    Jt = X(5,:);
    Jz = X(6,:);

    p = X(7,:);

    loss_in = mean((p-pin).^2)./mean(pin.^2) + mean((Bz - Bzin).^2)./mean(Bzin).^2 ...
        +  mean((Br - Brin).^2)./mean(Brin.^2)+  mean((Bt - Btin).^2)./mean(Btin.^2);
    %% 

    loss_v = [loss1 loss2 loss3 loss_b loss_in loss_f];

    %% 

    loss = sum(loss_v.*alpha);

    gradients = dlgradient(loss,parameters);

end





