% Routine that plays a game from start to finish.
% Roberto Masocco
% 2/4/2021

function [s, a, r] = play_game_exploring(s0, a0, policy)
    s = s0;
    a = [];
    r = [];
    while s(end) ~= -1
        St = s(end);
        if isempty(a)
            % Initial action: exploring start chosen outside.
            At = a0;
        else
            % Follow the policy after the beginning.
            At = policy(St);
        end
        [St1, Rt1] = blackjack(St, At);
        s = [s, St1];
        a = [a, At];
        r = [r, Rt1];
    end
end