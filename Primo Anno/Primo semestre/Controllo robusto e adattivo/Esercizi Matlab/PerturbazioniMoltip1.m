clc
clear
close all
%% Esercizio 1
om=logspace(-2,3,100);% Omega
a_av=(10+0.1)/2;

figure(1)
for a=0.1:0.05:10
    Gt=1./((1i*om).^2+a*1i*om+1);
    G=1./((1i*om).^2+a_av*1i*om*1);
    loglog(om,abs(Gt./G-1));
    hold on
end
grid
% La relazione seguent permette di progettare il peso W2(jw) (in rosso) che
% non deve assolutamente intersecare le linee del processo per avere la
% condizione soddisfatta
loglog(om,abs(7*1i*om./(1*1i*om+1).^2),'r+'); %10s/s(s+1)^2
%Soddisfa la relazione
loglog(om,abs(100*1i*om./(1*1i*om+1).^2),'b+'); %10s/s(s+1)^2

axis([1e-2,1e3,1e-3,1e2]);
hold off

%% Esecizio 2
om=logspace(-2,3,100);
figure(2);
for tau =0:0.01:0.1
    loglog(om,abs(exp(-1i*om*tau)-1));
    hold on
end

loglog(om,abs(0.21i*om./(0.1i*om+1)),'r+');%0.21s/(0.1 s+1)
hold off
%% Esercizio 3
 figure(3)

 for k0=0.1:0.01:10
     k=0.1:0.05:10;
     W2=max(abs(k./k0-1));
     plot(k0,W2,'.');
     hold on
 end

 xlabel('k_0')
 hold off
 axis([0.1,10,0,5])
 grid
 %Il minimo si ottiene come la media del parametro minimo e massimo per
 %minimizzare il peso W2(jw)
 %% Esercizio 4
