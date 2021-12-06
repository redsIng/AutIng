% Assignment 7 calcoli e definizioni
% Alessandro Lomazzo 0294640, Gianluca Coccia 0300085
% 02/02/2021

clearvars
close all
clc

% Parametri sistema
M = 1; 
l = 1; 
F = 1; 
g = 9.81; 

% Parametri sistema esogeno
omega = 0.1; 
% omega = 1; 
% omega = 10; 
alpha = 1; 
d1 = 1; 
d1_amp = 0.5; 
d1_period = 50; 

%% Modello nello spazio di stato
A_t = [0 1 0 0
       0 -F/M 0 0
       0 0 0 1
       0 F/(M*l) g/l 0];
B_t = [0; 1/M; 0; -1/(M*l)];
P_t = [0 0 0
       0 0 1/M
       0 0 0
       0 0 -1/(M*l)];
C_t = [1 0 0 0
       0 0 1 0];
C_te = [1 0 0 0];
S = [0 1 0
     -omega^2 0 0
     0 0 0];
Q = [-1 0 0
     0 0 0];
Q_te = [-1 0 0];
BP = horzcat(B_t, P_t);
x0 = [0 0 0 0];
n = 4;
p = 1;
r = 3;

fprintf("Modello linearizzato:\n");
A_t
B_t
P_t
C_t
Q
fprintf("Modello sistema esogeno:\n");
S
fprintf("Condizioni iniziali:\n");
x0

%% Proprieta' del sistema
% Controllo autovalori matrice S non negativi
s_eigs = eig(S);
fprintf("Autovalori di S: \n");
s_eigs

% Controllabilita'
P_reach = ctrb(A_t, B_t);
P_reach_inv = P_reach^(-1);
if rank(P_reach) ~= n
    fprintf("Sistema non controllabile\n");
    return
else
    fprintf("Sistema controllabile\n");
end

% Osservabilita'
if rank(obsv(A_t, C_t)) ~= n
    fprintf("Sistema non osservabile\n");
    return
else
    fprintf("Sistema osservabile\n");
end
if rank(obsv(horzcat(vertcat(A_t, zeros(3, 4)), vertcat(P_t, S)), horzcat(C_t, Q))) ~= n+r
    fprintf("Sistema eseteso non osservabile\n");
    return
else
    fprintf("Sistema esteso osservabile\n");
end

% Lemma di Hautus
for i=1:length(s_eigs)
    hautus_mat = horzcat(vertcat(s_eigs(i)*eye(4) - A_t, C_te), vertcat(B_t, 0));
    if rank(hautus_mat) ~= n+p
        fprintf("Lemma di Hautus non soddisfatto\n");
        return
    end
end
fprintf("Lemma di Hautus soddisfatto\n");

% Autovalori di A
eigs_A = eig(A_t);
fprintf("Autovalori di A =");
eigs_A

% Stabilizzazione con Ackermann
ack = P_reach_inv(end, :);
pDesA = (A_t + eye(4))*(A_t + 2*eye(4))*(A_t + 3*eye(4))*(A_t + 4*eye(4));
K = -ack*pDesA;
newEigs = eig(A_t+B_t*K);

fprintf("Nuovi autovalori:\n");
disp(newEigs);
fprintf("Guadagno di stabilizzazione:\n");
K

% Soluzione equazioni FBI 
% omega = 0.1 
Pi = [1 0 0
      0 1 0
      -1/982 0 0
      0 -1/982 0];
Gamma = [-1/100 1 -1];

% omega = 1 
% Pi = [1 0 0
%       0 1 0
%       -100/1081 0 0
%       0 -100/1081 0];
% Gamma = [-1 1 -1];

% omega = 10 
% Pi = [1 0 0
%       0 1 0
%       -1e4/10981 0 0
%       0 -1e4/10981 0];
% Gamma = [-100 1 -1];

fprintf("Matrici Pi e Gamma:\n");
Pi
Gamma

% Guadagno segnali esogeni
L = Gamma - K*Pi;

fprintf("Guadagno segnali esogeni L:\n");
L