close all
clear all
clc
%%
syms c
p1= (c^2+6)/(2*c^2-1);
p2=(3*c^2+4)/(2*c^2-2);
p3=(-c^4-6*c^2+12+4*c-4*c^3)/(2*c*(c^2-1));
P=[p1 p2;p2 p3]
Pn=subs(P,c,1/2)
[~,p]=chol(Pn)
[V,D,W]=eig(Pn)

%% Riccati Tempo discreto
A=-1;
B=1;
Q=3;
R=1;
[S,E,K]=care(A,B,Q,R)
