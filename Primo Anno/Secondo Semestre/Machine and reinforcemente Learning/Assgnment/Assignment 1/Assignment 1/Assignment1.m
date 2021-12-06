%% Assignment 1
% Progettare un sistema basato sul problema degli n-arm bandit
% analizzandolo con l'algoritmo di sample-average. Dimostrare che
% che questo algoritmo ha problemi su condizioni non stazionarie.
clc;
clear;
close all;
%% Definitions
N = 10;     % number of bandits
T = 1000;   % max sampling time
value = 1;
epsilon = [0.0, 0.01, 0.05, 0.1, 0.5, 0.9];
% epsilon = 0.01:0.05:0.9;
symTime = 1:T;
% random seed
rng('default');
%% Init Phase
arms(1,1:N) = Arm(T, 0);   % create bandit's instance
[statVal,optRew,optChoice] = growth(N, T, 1, value);   % 1 for stationary case
[nonStatVal,nonoptRew,nonoptChoice] = growth(N, T, 0, value);    % 0 for non-stationary case
%% Epsilon-Greedy Algorithm
% R: rewards vector
% arms: bandits in eGreedy Alg
% Na: counter vector of actions
lene = length(epsilon);
R = zeros(lene, T);
Arms(1:lene,1:N) = Arm(T,0);
Na = zeros(lene, N);
optCount_egreedy = zeros(N,T,lene);
percentageOpt=zeros(lene,T);
% optMaxRew_egreedy = zeros(lene, T);
% Stationary Case
for i = 1:length(epsilon)
    %     [Ri, armsi, Nai, optCounti, optMaxRewi] = eGreedyAlgorithm(arms,statVal,statRew,T,epsilon(i),0);
    [Ri, armsi, Nai,optCounti] = eGreedyAlgorithm(arms,statVal,T,epsilon(i),0);
    R(i,:) = Ri;
    Arms(i,:) = armsi;
    Na(i,:) = Nai;
    optCount_egreedy(:,:,i) = optCounti;
    %     optMaxRew_egreedy(i,:) = optMaxRewi;
    for t=1:T
         [tempMax,idxMax] = max(optChoice(:,t));
         if tempMax==0
             percentageOpt(i,t)=0;
         else
         percentageOpt(i,t)= optCount_egreedy(idxMax,t,i)/tempMax*100;
         end
    end
end

% eGreedyPlot(symTime, statVal(:,1), R, Na, Arms,optCount_egreedy,optMaxRew_egreedy,1)
eGreedyPlot(symTime, statVal(:,:), R, Na, Arms,optRew,percentageOpt,1);
%% Non-Stationary Case - 1/Na
% non stazionario ma con step 1/Na vince esplorazione. Greedy altrimenti
for i = 1:length(epsilon)
    %     [Ri, armsi, Nai, optCounti, optMaxRewi] = eGreedyAlgorithm(arms,statVal,statRew,T,epsilon(i),0);
    [Ri, armsi, Nai,optCounti] = eGreedyAlgorithm(arms,nonStatVal,T,epsilon(i),0);
    R(i,:) = Ri;
    Arms(i,:) = armsi;
    Na(i,:) = Nai;
    optCount_egreedy(:,:,i) = optCounti;
    %     optMaxRew_egreedy(i,:) = optMaxRewi;
    for t=1:T
         [tempMax,idxMax] = max(nonoptChoice(:,t));
         percentageOpt(i,t)= optCount_egreedy(idxMax,t,i)/tempMax*100;
    end
end
eGreedyPlot(symTime, nonStatVal(:,:), R, Na, Arms,nonoptRew,percentageOpt,2)


figure();
boxplot(nonStatVal);

%% Epsilon-Greedy Algorithm with Constant Step
% alpha = [ 0.0100, 0.1800, 0.3500, 0.5200, 0.8600, 1];
% Rc = zeros(size(epsilon,2),T,length(alpha));
% vNac = zeros(size(epsilon,2),N,length(alpha));
% Armc(1:size(epsilon,2),1:N,1:length(alpha)) = Arm(T, 0);
% for a = 1:length(alpha)
%     [R1c, arms1c, Na1c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(1),alpha(a));
%     [R2c, arms2c, Na2c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(2),alpha(a));
%     [R3c, arms3c, Na3c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(3),alpha(a));
%     [R4c, arms4c, Na4c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(4),alpha(a));
%     [R5c, arms5c, Na5c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(5),alpha(a));
%     [R6c, arms6c, Na6c] =  eGreedyConst(arms,nonStatVal, nonoptRew,T,epsilon(6),alpha(a));
%     vNac(:,:,a) = [Na1c; Na2c; Na3c; Na4c; Na5c; Na6c];
%     Rc(:,:,a) = [R1c; R2c; R3c; R4c; R5c; R6c];
%     Armc(:,:,a) = [arms1c; arms2c; arms3c; arms4c; arms5c; arms6c];
% end
% eGreedyConstPlot(symTime, zeros(T,1), Rc,vNac, Armc)

% [R1na, arms1na, Na1na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(1),0);
% [R2na, arms2na, Na2na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(2),0);
% [R3na, arms3na, Na3na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(3),0);
% [R4na, arms4na, Na4na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(4),0);
% [R5na, arms5na, Na5na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(5),0);
% [R6na, arms6na, Na6na] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(6),0);
% % plots
% vNana = [Na1na; Na2na; Na3na; Na4na; Na5na; Na6na];
% Rna = [R1na; R2na; R3na; R4na; R5na; R6na];
% eGreedyPlot(symTime, zeros(T,1), Rna, vNana, arms2na,2)
%
% %% Non-Stationary Case
% % non stazionario ma con step 1/Na vince esplorazione. Greedy altrimenti
% [R1n, arms1n, Na1n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(1),1);
% [R2n, arms2n, Na2n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(2),1);
% [R3n, arms3n, Na3n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(3),1);
% [R4n, arms4n, Na4n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(4),1);
% [R5n, arms5n, Na5n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(5),1);
% [R6n, arms6n, Na6n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(6),1);
% % plots
% vNan = [Na1n; Na2n; Na3n; Na4n; Na5n; Na6n];
% Rn = [R1n; R2n; R3n; R4n; R5n; R6n];
% eGreedyPlot(symTime, zeros(T,1), Rn, vNan, arms2n,2)
%
% %% Epsilon-Greedy Algorithm with Constant Step
% alpha = [ 0.0100, 0.1800, 0.3500, 0.5200, 0.8600, 1];
% Rc = zeros(size(epsilon,2),T,length(alpha));
% vNac = zeros(size(epsilon,2),N,length(alpha));
% Armc(1:size(epsilon,2),1:N,1:length(alpha)) = Arm(T, 0);
% for a = 1:length(alpha)
%     [R1c, arms1c, Na1c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(1),alpha(a));
%     [R2c, arms2c, Na2c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(2),alpha(a));
%     [R3c, arms3c, Na3c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(3),alpha(a));
%     [R4c, arms4c, Na4c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(4),alpha(a));
%     [R5c, arms5c, Na5c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(5),alpha(a));
%     [R6c, arms6c, Na6c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(6),alpha(a));
%     vNac(:,:,a) = [Na1c; Na2c; Na3c; Na4c; Na5c; Na6c];
%     Rc(:,:,a) = [R1c; R2c; R3c; R4c; R5c; R6c];
%     Armc(:,:,a) = [arms1c; arms2c; arms3c; arms4c; arms5c; arms6c];
% end
% eGreedyConstPlot(symTime, zeros(T,1), Rc,vNac, Armc)
%
%
% %% Upper Confidence Bound
% % only for non-stationary action's values.
% c = 0:200:1000;
% Q_start = 100;
% alphau = [0.01, 0.5, 1];
% Ru = zeros(size(c,2),T,length(alphau));
% vNau = zeros(size(c,2),N,length(alphau));
% Armu(1:size(c,2),1:N,1:length(alphau)) = Arm(T, value);
% nonStatValUCB = growth(N, T, 0, value);
% for i = 1:length(alphau)
%     [R1u, arms1u, Na1u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(1),alpha(i),Q_start);
%     [R2u, arms2u, Na2u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(2),alpha(i),Q_start);
%     [R3u, arms3u, Na3u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(3),alpha(i),Q_start);
%     [R4u, arms4u, Na4u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(4),alpha(i),Q_start);
%     [R5u, arms5u, Na5u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(5),alpha(i),Q_start);
%     [R6u, arms6u, Na6u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(6),alpha(i),Q_start);
%     vNau(:,:,i) = [Na1u; Na2u; Na3u; Na4u; Na5u; Na6u];
%     Ru(:,:,i) = [R1u; R2u; R3u; R4u; R5u; R6u];
%     Armu(:,:,i) = [arms1u; arms2u; arms3u; arms4u; arms5u; arms6u];
% end
% % plots
% UCBPlot(symTime, zeros(T,1), Ru, vNau, Armu);
%
% %% Preference Update
% % Action's selections is based on a preference value defined by
% % a soft-max distribution
% alphaPu = [0.01, 0.05, 0.08, 0.5,0.8, 1];
% Rpu = zeros(length(alphaPu),T);
% ArmsPu(1:length(alphaPu),1:N) = Arm(T, 0);
% NaPu = zeros(length(alphaPu),N);
% HaPu = zeros(N*length(alphaPu),T);
% [Rpu1, ArmsPu1, NaPu1, HaPu1] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(1));
% [Rpu2, ArmsPu2, NaPu2, HaPu2] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(2));
% [Rpu3, ArmsPu3, NaPu3, HaPu3] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(3));
% [Rpu4, ArmsPu4, NaPu4, HaPu4] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(4));
% [Rpu5, ArmsPu5, NaPu5, HaPu5] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(5));
% [Rpu6, ArmsPu6, NaPu6, HaPu6] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(6));
% NaPu(:,:) = [NaPu1;NaPu2;NaPu3;NaPu4;NaPu5;NaPu6];
% Rpu(:,:) = [Rpu1;Rpu2;Rpu3;Rpu4;Rpu5;Rpu6];
% HaPu(:,:) = [HaPu1;HaPu2;HaPu3;HaPu4;HaPu5;HaPu6];
% ArmsPu(:,:) = [ArmsPu1;ArmsPu2;ArmsPu3;ArmsPu4;ArmsPu5;ArmsPu6];
% prefUpPlot(symTime, Rpu, NaPu, ArmsPu, HaPu);
%
% %% All vs All
% figure()
% [maxRna,idx1]=max(Rna(:,T));
% [maxRn,idx2]=max(Rn(:,T));
% [maxRca,idx3a]=max(Rc(:,T,1));
% [maxRcb,idx3b]=max(Rc(:,T,2));
% [maxRcc,idx3c]=max(Rc(:,T,3));
% maxVect=[maxRca,maxRcb,maxRcc];
% [maxRc,idx3]=max(maxVect);
% if maxRc==maxRca
%     Rconst=Rc(idx3a,:,1);
% else
%     if maxRc==maxRcb
%             Rconst=Rc(idx3b,:,2);
%
%     else
%         if maxRc==maxRcc
%                 Rconst=Rc(idx3c,:,3);
%         end
%     end
% end
%
% [maxRua,id3a]=max(Ru(:,T,1));
% [maxRub,id3b]=max(Ru(:,T,2));
% [maxRuc,id3c]=max(Ru(:,T,3));
% maxVectu=[maxRua,maxRub,maxRuc];
% [maxRu,id3]=max(maxVectu);
% if maxRu==maxRua
%     Ru_p=Ru(id3a,:,1);
% else
%     if maxRu==maxRub
%             Ru_p=Ru(id3b,:,2);
%
%     else
%         if maxRu==maxRuc
%                 Ru_p=Ru(id3c,:,3);
%         end
%     end
% end
% [maxRpu,idx5]=max(Rpu(:,T));
% plot(symTime,Rna(idx1,:));
% hold on;
% plot(symTime,Rn(idx2,:));
% hold on;
% plot(symTime,Rconst(1,:));
% hold on;
% plot(symTime,Ru_p(1,:));
% hold on;
% plot(symTime,Rpu(idx5,:));
% hold on;
% ylabel('R(t)');
% xlabel('time t');
% title('Best solution of every Algorithm');
% legend('\epsilon 1/(N_a)','\epsilon 1/t','const-step','UCB','Preference', 'Location', 'northwest');
%
%
%
% % for i=1:3
% %     [startVal,startRew]=growth(N,T,0,randi([0 N]));
% %     [Rn, armsn, Nan] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(1),0);
% %
% %     [R1n, arms1n, Na1n] =  eGreedyAlgorithm(arms,nonStatVal, nonStatRew,T,epsilon(1),1);
% %     [R1c, arms1c, Na1c] =  eGreedyConst(arms,nonStatVal, nonStatRew,T,epsilon(1),alpha(a));
% %     [R1u, arms1u, Na1u] =  UCB(arms,nonStatValUCB, nonStatRew,T,c(1),alpha(i));
% %     [Rpu1, ArmsPu1, NaPu1, HaPu1] = prefUpdate(arms, nonStatVal, nonStatRew, T, alphaPu(1));
% %     plot(symTime,);
% % end
%
