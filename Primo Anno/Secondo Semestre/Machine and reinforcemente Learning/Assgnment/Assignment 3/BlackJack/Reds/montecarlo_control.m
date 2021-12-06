clear all
close all
clc

S = 10*10*2;
gamma = 1;
A=2;
numEpisodes=1000;
numRepetitions =1000;
N = zeros(S,A);
Q = zeros(S,A);
policy = zeros(2,S,1);
for w = 1:numRepetitions
    for e =1:numEpisodes
        s0 = randi(S);
        a0 = randi(2);
        [s,a,r] = playGameExploring(s0,a0,policy);
        G = 0;
        for t = length(s)-1:-1:1
            G = r(t) + gamma*G;
            N(s(t),a(t)) = N(s(t),a(t))+1;
            Q(s(t),a(t)) = Q(s(t),a(t))+ 1/N(s(t),a(t))*(G-Q(s(t),a(t)));
        end
    end
    
    for s = 1:S
        policy(s) = find(Q(s,:)== max(Q(s,:)),1,'first');
        
    end
end

%%
hands = zeros(S,1);
dealer = zeros(S,1);
usable = zeros(S,1);
for s = 1:S
    [hands(s), dealer(s), usable(s)] = ind2sub([10, 10, 2], s);
end

indxUsable = find(usable == 1);
indxNotUsable = find(usable == 2);

figure()
subplot(1,2,1)
contourf(reshape(hands(indxUsable)+11,[10,10]),...
    reshape(dealer(indxUsable),[10,10]),...
    reshape(policy(indxUsable),[10,10]),[1,2]);
subplot(1,2,2)
contourf(reshape(hands(indxNotUsable)+11,[10,10]),...
    reshape(dealer(indxNotUsable),[10,10]),...
    reshape(policy(indxNotUsable),[10,10]),[1,2]);