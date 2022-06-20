%% Definizione matrici
m = 1;
l = 1;
f = 1;
g = 9.81;
lm = l*m;
w = 10;
w2 = w^2;
w3 = w^3;

A = [0,    1,   0,  0;
     0, -f/m,   0,  0;
     0,    0,   0,  1;
     0, f/lm, g/l,  0];
 
B = [    0;
       1/m;
         0;
     -1/lm];

P = [   0, 0, 0;
      1/m, 0, 0;
        0, 0, 0;
    -1/lm, 0, 0];

C = [1, 0, 0, 0;
     0, 0, 1, 0];
 
Q = [0, -1, 0];

S = [0, 0, 0;
     0, 0, w;
     0,-w, 0];

Ce = C(1,:);


%% Assegnazione autovalori
eigen = [-1.5,-1,-1.2,-0.8];

% K = acker(A,-B,eigen);
K = place(A,-B,eigen);

Pi = [0,            1,            0;
      0,            0,            w;
      0, -w2/(l*w2+g),            0;
      0,            0, -w3/(l*w2+g)];

Gamma = [-1, -m*w2, f*w];

test1 = (Pi*S - (A*Pi + B*Gamma + P));
test2 = (Ce*Pi + Q);

L = Gamma - K*Pi;