% Blackjack Monte Carlo control with policy iteration and exploring start.
% Roberto Masocco
% 2/4/2021

clearvars
close all
clc

S = 10*10*2;
A = 2;

N = zeros(S, A);  % Number of times I got in s and took a.
Q = zeros(S, A);  % q function estimation.

gamma = 1;
episodes = 1e3;
repetitions = 1e2;

policy = randi(2, S, 1);  % Start with a random policy.

% This approximates the optimal policy with policy iteration.
for w = 1:repetitions
    % Do policy estimation on new episodes.
    for e = 1:episodes
        s0 = randi(S);  % Draw an initial state.
        a0 = randi(2);  % Draw an initial action at random.
        [s, a, r] = play_game_exploring(s0, a0, policy);
        G = 0;
        for t = length(s)-1:-1:1
            % Monte Carlo update.
            G = r(t) + gamma*G;
            N(s(t), a(t)) = N(s(t), a(t)) + 1;
            Q(s(t), a(t)) = Q(s(t), a(t)) + 1/N(s(t), a(t))*(G - Q(s(t), a(t)));
        end
    end
    % Now do policy improvement.
    for s = 1:S
        policy(s) = find(Q(s, :) == max(Q(s, :)), 1, 'first');
    end
end