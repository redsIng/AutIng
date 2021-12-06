% Blackjack Monte Carlo control with value iteration and eps-soft.
% Roberto Masocco
% 2/4/2021

clearvars
close all
clc

S = 10*10*2;
A = 2;

N = zeros(S, A);  % Number of times I saw the couple (s, a).
Q = zeros(S, A);  % q function estimation.

gamma = 1;
episodes = 1e5;
eps = 0.1;

policy = randi(2, S, 1);  % Start with a random policy.

% This approximates the optimal policy with value iteration.
for e = 1:episodes
    s0 = randi(S);  % Draw an initial state.
    a0 = randi(2);  % Draw an initial action at random.
    [s, a, r] = play_game_eps(s0, policy, eps);
    G = 0;
    for t = length(s)-1:-1:1
        % Monte Carlo update and policy improvement.
        G = r(t) + gamma*G;
        N(s(t), a(t)) = N(s(t), a(t)) + 1;
        Q(s(t), a(t)) = Q(s(t), a(t)) + 1/N(s(t), a(t))*(G - Q(s(t), a(t)));
        Astar = find(Q(s(t), :) == max(Q(s(t), :)), 1, 'first');
        policy(s(t)) = Astar;
    end
end