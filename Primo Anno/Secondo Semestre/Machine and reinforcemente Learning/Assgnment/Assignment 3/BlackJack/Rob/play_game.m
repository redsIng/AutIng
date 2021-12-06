% Routine that plays a game from start to finish.
% Roberto Masocco
% 2/4/2021

function [s, a, r] = play_game(s0, policy)
    % Save states touched, actions taken, rewards earned.
    s = s0;
    a = [];
    r = [];
    while s(end) ~= -1
        % Play until you get in a terminal state: that's an episode.
        St = s(end);
        At = policy(St);
        [St1, Rt1] = black_jack(St, At);
        s = [s, St1];
        a = [a, At];
        r = [r, Rt1];
    end
end
