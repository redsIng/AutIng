% Blackjack with Monte Carlo policy estimation.
% Roberto Masocco
% 2/4/2021

clearvars
close all
clc

S = 10*10*2;
N = zeros(S, 1);
V = zeros(S, 1);
episodes = 1e3;
gamma = 1;
policy = zeros(S, 1);

% This is the policy whose value we'll estimate.
for s = 1:S
    policy(s) = basic_policy(s);
end

% This is value estimation for a given policy.
for e = 1:episodes
    s0 = randi(S);  % Draw an initial state.
    [s, a, r] = play_game(s0, policy);
    G = 0;
    for t = length(s)-1:-1:1
        % Monte Carlo update.
        G = r(t) + gamma*G;
        N(s(t)) = N(s(t)) + 1;
        V(s(t)) = V(s(t)) + 1/N(s(t))*(G - V(s(t)));
    end
end

%% Plot value functions (see his code for this, this is just a hint).
% You can do this too for quality functions in other files.
hands = zeros(S, 1);
dealer = zeros(S, 1);
usable = zeros(S, 1);
for s = 1:S
    [hands(s), dealer(s), usable(s)] = ind2sub([10, 10, 2], s);
end

indxUsable = find(usable == 1);
indxNotUsable = find(usable == 2);

figure()
subplot(1, 2, 1)
surf(reshape(hands(indxNotUsable), [10, 10]),...
     reshape(dealer(indxNotUsable), [10, 10]),...
     reshape(V(indxnotUsable), [10, 10]));