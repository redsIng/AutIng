function plotPlasma3D(Plasma)
phi = Plasma.Phi;
figure(1)
for i=1: size(phi,3)
    Rtempx = Plasma.R(:,:,i)*cos(phi(1,1,i));
    Rtempy = Plasma.R(:,:,i)*sin(phi(1,1,i));
subplot(3,3,1)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Psi(:,:,i),'LineStyle','none');
title("Psi")
hold on
colorbar()

subplot(3,3,2)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),max(Plasma.p(:,:,i),0),'LineStyle','none')
title("p")
hold on
colorbar()

subplot(3,3,3)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Br(:,:,i),'LineStyle','none')
title("Br")
hold on
colorbar()

subplot(3,3,4)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Bz(:,:,i),'LineStyle','none')
title("Bz")
hold on
colorbar()

subplot(3,3,5)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Bt(:,:,i),'LineStyle','none')
title("Bt")
hold on
colorbar()

subplot(3,3,6)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Jr(:,:,i),'LineStyle','none')
title("Jr")
hold on
colorbar()

subplot(3,3,7)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Jz(:,:,i),'LineStyle','none')
title("Jz")
hold on
colorbar()

subplot(3,3,8)
surface(Rtempx,Rtempy,Plasma.Z(:,:,i),Plasma.Jt(:,:,i),'LineStyle','none')
title("Jt")
hold on
colorbar()
end


end