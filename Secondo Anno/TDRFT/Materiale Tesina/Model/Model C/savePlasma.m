function [outputArg1] = savePlasma(Rp,Zp,Phip,loss,Plasma,parameters,name,epoch)
L(epoch,1:size(loss,2)) = double(extractdata(gather(loss)));
% Br=zeros(size(Plasma.R));
% Bz=zeros(size(Plasma.R));
% Bt=zeros(size(Plasma.R));
% Jr=zeros(size(Plasma.R));
% Jt=zeros(size(Plasma.R));
% Jz=zeros(size(Plasma.R));
% p=zeros(size(Plasma.R));

X = Network01([Rp;Zp;Phip],1,parameters);

Br = reshape(double(extractdata(gather(X(1,:)))),size(Plasma.R));
Bt = reshape(double(extractdata(gather(X(2,:)))),size(Plasma.R));
Bz = reshape(double(extractdata(gather(X(3,:)))),size(Plasma.R));

Jr = reshape(double(extractdata(gather(X(4,:)))),size(Plasma.R));
Jt = reshape(double(extractdata(gather(X(5,:)))),size(Plasma.R));
Jz = reshape(double(extractdata(gather(X(6,:)))),size(Plasma.R));

p  = reshape(double(extractdata(gather(X(7,:)))),size(Plasma.R));

save(strcat('Trained',string(name),'.mat'), 'Plasma', 'p', 'Br', 'Bz', 'Bt', 'Jt', 'Jr', 'Jz', 'L')
end

