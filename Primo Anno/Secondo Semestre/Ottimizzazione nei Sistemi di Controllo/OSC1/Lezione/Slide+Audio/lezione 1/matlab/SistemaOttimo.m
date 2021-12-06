function xdot = SistemaOttimo(t,y)

global m x10

x1 = y(1);
x2 = y(2);
x = [x1;x2];

A = [0 1;0 0];
B = [0;1/m];

u = -x1-sqrt(2)*x2;

xdot = A*x+B*u;