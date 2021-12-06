%% Assignment 1 - 10-Arm Bandint
% Progettare un sistema basato sul problema degli n-arm bandit
% analizzandolo con l'algoritmo di sample-average. Dimostrare che
% che questo algoritmo ha problemi su condizioni non stazionarie.
clc;
clear;
close all;
%% Definitions
N = 10;     % number of bandits
T = 1000;   % max sampling time
symTime = 1:T;  % sampling time vector for simulation
epsilon = [0.0, 0.01, 0.05, 0.1, 0.5, 0.9]; % epsilon value
q0 = 5; % true value of every bandit
arms(1:N) = Bandit(q0,T,"stat");    % only for init
% Step-size type
% timing -> alpha = 1/t
% const -> alpha = constant
% counter -> alpha = 1/Na
step_type = ["timing", "const", "counter"];
alpha = 0.01;  % constant value for constant step-size.
% Setup rng states for reproducibility
rng('default');
s = rng;
%% Epsilon-Greedy Algorithm
for i = 1:N
    %     q = normrnd(q0,1);
    %     q = randi([-q0,q0]);
    q = q0;
    arms(i) = Bandit(q,T,"~");
end
%% timing
Arms_eGreedy(1:N,1:size(epsilon,2)) = Bandit(q0,T,"~");
avgRew = zeros(size(epsilon,2),T);
argMaxs = zeros(size(epsilon,2),T);
% armsi(1:N) = Bandit(q0,T,"~");
actualChoice = zeros(size(epsilon,2),T);
for i = 1:size(epsilon,2)
    [armsi, avgRewi,...
        argMaxsi, actualChoicesi] = eGreedy(epsilon(i), arms, T, step_type(1),0);
    Arms_eGreedy(:,i) = armsi';
    avgRew(i,:) = avgRewi;
    argMaxs(i,:) = argMaxsi;
    actualChoice(i,:) = actualChoicesi;
end
%% plot
eGreedyPlot(Arms_eGreedy, q0, symTime, avgRew, argMaxs, actualChoice, "1/t");
%% const
Arms_eGreedy_const(1:N,1:size(epsilon,2)) = Bandit(q0,T,"~");
avgRew_const = zeros(size(epsilon,2),T);
argMaxs_const = zeros(size(epsilon,2),T);
% armsi_const(1:N) = Bandit(q0,T,"~");
actualChoice_const = zeros(size(epsilon,2),T);
for i = 1:size(epsilon,2)
    [armsi_const, avgRewi_const,...
        argMaxsi_const, actualChoicesi_const] = eGreedy(epsilon(i), arms, T, step_type(2),0);
    Arms_eGreedy_const(:,i) = armsi_const';
    avgRew_const(i,:) = avgRewi_const;
    argMaxs_const(i,:) = argMaxsi_const;
    actualChoice_const(i,:) = actualChoicesi_const;
end
%% plot
eGreedyPlot(Arms_eGreedy_const, q0, symTime ,avgRew_const,...
      argMaxs_const, actualChoice_const, "const = "+alpha);
%% counter
Arms_eGreedy_count(1:N,1:size(epsilon,2)) = Bandit(q0,T,"~");
avgRew_count = zeros(size(epsilon,2),T);
argMaxs_count = zeros(size(epsilon,2),T);
% armsi_const(1:N) = Bandit(q0,T,"~");
actualChoice_count = zeros(size(epsilon,2),T);
for i = 1:size(epsilon,2)
    [armsi_count, avgRewi_count,...
        argMaxsi_count, actualChoicei_count] = eGreedy(epsilon(i), arms, T, step_type(3),0);
    Arms_eGreedy_count(:,i) = armsi_count';
    avgRew_count(i,:) = avgRewi_count;
    argMaxs_count(i,:) = argMaxsi_count;
    actualChoice_count(i,:) = actualChoicei_count;
end
%% plot
eGreedyPlot(Arms_eGreedy_count, q0, symTime, avgRew_count,...
     argMaxs_count, actualChoice_count, "1/Na");
%% Upper Confidance Bound 
% c = 1000:1000:6000;
c = [0.1, 1, 10, 1e2, 1e3, 1e4];
armsUCB(1:N) = Bandit(q0,T,"UCB");
Arms_UCB(1:N,1:size(c,2)) = Bandit(q0,T,"~");
avgRew_UCB = zeros(size(c,2),T);
argMaxs_UCB = zeros(size(c,2),T);
% armsi_UCB(1:N) = Bandit(q0,T,"~");
actualChoice_UCB = zeros(size(c,2),T);
for i = 1:length(c)
    [armsi_UCB, avgRewi_UCB, ...
        argMaxsi_UCB, actualChoicei_UCB] = UCB(armsUCB, T, c(i), alpha);
    Arms_UCB(:,i) = armsi_UCB';
    avgRew_UCB(i,:) = avgRewi_UCB;
    argMaxs_UCB(i,:) = argMaxsi_UCB;
    actualChoice_UCB(i,:) = actualChoicei_UCB;
end
%%
UCBPlot(Arms_UCB, q0, symTime, avgRew_UCB,...
    argMaxs_UCB, actualChoice_UCB);
%% Preference Update
alphaPU = [0.01, 0.05, 0.08, 0.5, 0.8, 1];
Arms_PU(1:N,1:size(alphaPU,2)) = Bandit(q0,T,"~");
avgRew_PU =  zeros(size(alphaPU,2),T);
argMaxs_PU = zeros(size(alphaPU,2),T);
armsi_PU(1:N) = Bandit(q0,T,"~");
actualPreferences = zeros(size(alphaPU,2),T);
for i = 1:length(alphaPU)
    [armsi_PU, avgRewi_PU,...
        argMaxsi_PU, preferences] = prefUpdate(arms, T, alphaPU(i));
    avgRew_PU(i,:) = avgRewi_PU;
    argMaxs_PU(i,:) = argMaxsi_PU;
    actualPreferences(i,:) = preferences;
    Arms_PU(:,i) = armsi_PU';
end
%%
PreferencePlot(Arms_PU, q0, symTime, avgRew_PU);
