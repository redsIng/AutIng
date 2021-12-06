function xdot = Sistema(t,y)

global m x10

x1 = y(1);
x2 = y(2);
x = [x1;x2];

A = [0 1;0 0];
B = [0;1/m];

u = -6*(1-2*t)*x10;

xdot = A*x+B*u;