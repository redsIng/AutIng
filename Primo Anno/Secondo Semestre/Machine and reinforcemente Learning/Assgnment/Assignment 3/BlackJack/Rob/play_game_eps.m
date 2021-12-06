% Routine that plays a game with eps-soft policy.
% Roberto Masocco
% 2/4/2021

function [s, a, r] = play_game_eps(s0, policy, eps)
    s = s0;
    a = [];
    r = [];
    while s(end) ~= -1
        St = s(end);
        % Follow the policy with probability eps, else explore.
        if rand <= 1-eps
            At = randi(2);
        else
            At = policy(St);
        end
        [St1, Rt1] = black_jack(St, At);
        s = [s, St1];
        a = [a, At];
        r = [r, Rt1];
    end
end
