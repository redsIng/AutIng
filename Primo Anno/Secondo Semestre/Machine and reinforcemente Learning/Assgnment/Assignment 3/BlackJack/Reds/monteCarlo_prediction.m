clear all
close all
clc
numEpisodes=1000;
S = 10*10*2;
gamma = 1;
policy = zeros(S,1);
N = zeros(S,1);
V= zeros(S,1);
for s = 1:S
    policy(s) = basic_policy(s);
end
for e =1:numEpisodes
    s0 = randi(S);
    [s,a,r] = playGame(s0,policy);
    G = 0;
    for t = length(s)-1:-1:1
        G = r(t) + gamma*G;
        N(s(t)) = N(s(t))+1;
        V(s(t)) = V(s(t))+ 1/N(s(t))*(G-V(s(t)));
    end
end
%%

hands = zeros(S,1);
dealer = zeros(S,1);
usable = zeros(S,1);
for s=1:S
    [hands(s),dealer(s),usable(s)] = ind2sub([10,10,2],s); 
end

indxUsable = find(usable == 1);
indxNotUsable = find(usable == 2);

figure()
subplot(1,2,1)
surf(reshape(hands(indxUsable)+11,[10,10]),...
    reshape(dealer(indxUsable),[10,10]),...
    reshape(V(indxUsable),[10,10]));
subplot(1,2,2)
surf(reshape(hands(indxNotUsable)+11,[10,10]),...
    reshape(dealer(indxNotUsable),[10,10]),...
    reshape(V(indxNotUsable),[10,10]));