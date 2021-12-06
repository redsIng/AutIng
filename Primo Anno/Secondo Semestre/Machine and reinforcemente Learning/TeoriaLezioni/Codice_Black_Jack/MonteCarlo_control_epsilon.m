clear all
close all
clc

numEpisodes = 1e5;
gamma = 1;
epsilon = 0.1;

S = 10*10*2;
A = 2;

N = zeros(S,A);
Q = zeros(S,A);

policy = randi(2,S,1);

for e = 1:numEpisodes
    s0 = randi(S);
    a0 = randi(2);
    [s, a, r] = playGameEpsilon(s0, policy, epsilon);
    G = 0;
    for t = length(s)-1: -1: 1
        G = r(t) + gamma*G;
        N(s(t),a(t)) = N(s(t),a(t)) + 1;
        Q(s(t),a(t)) = Q(s(t),a(t)) + 1/N(s(t),a(t))*(G - Q(s(t),a(t)));
        Astar = find(Q(s(t),:) == max(Q(s(t),:)), 1, 'first');
        policy(s(t)) = Astar;
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