clc
clear
close all
%%
syms theta phi
a = 1;
R = 4;
x = (R + a*cos(theta))*cos(phi);
y = (R + a*cos(theta))*sin(phi);
z = a*sin(theta);
fsurf(x,y,z,[0 2*pi 0 2*pi])
hold on
%%
% alpha = pi/2;
% Rx = [1 0 0;
%       0 cos(alpha) -sin(alpha);
%       0 sin(alpha) cos(alpha)];
% r = [x; y; z];
% r_90 = Rx*r;
% %%
% fsurf(r_90(1)+5,r_90(2),r_90(3))
% axis([-5 10 -5 10 -5 5])
% hold off