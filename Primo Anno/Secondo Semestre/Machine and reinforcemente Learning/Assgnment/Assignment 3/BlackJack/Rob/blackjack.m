% Blackjack game routine.
% Roberto Masocco
% 2/4/2021

clearvars
close all
clc

% We only need to represent a match, not probabilities.
% This is learning.
% This function models state transitions, mapping states to values we
% need using ind2sub like we know.
function [sp, r] = black_jack(s, a)
    [hand, dealer, usable_ace] = ind2sub([10, 10, 2], s);
    hand = hand + 11;  % Remap in [12, 21].
    % Decide what to do with the ace.
    switch a
        case 1  % Hit.
            [new_hand, new_usable] = hit(hand, usable_ace);
            if new_hand > 21
                % Burst! Terminal state.
                sp = -1;
                r = -1;
            else
                r = 0;  % Not a terminal state.
                % Get the new state with sub2ind as we know.
                % Remap the hand!
                sp = sub2ind([10, 10, 2], new_hand - 11, dealer, new_usable);
            end
        case 2  % Stick.
            % Dealer now flips his/her cards accoring to the known
            % deterministic policy.
            hand_dealer = dealer;
            if dealer == 1
                % Dealer showing a usable ace.
                usable_dealer = 1;
            else
                % Dealer has no aces.
                usable_dealer = 2;
            end
            while hand_dealer < 17
                % Keep flipping cards.
                [hand_dealer, usable_dealer] = hit(hand_dealer, usable_dealer);
            end
            if hand_dealer > 21
                % Dealer lost, player won.
                sp = -1;
                r = 1;
            else
                if hand_dealer > hand
                    % Player lost, dealer won.
                    sp = -1;
                    r = -1;
                elseif hand_dealer == hand
                    % Nobody won.
                    sp = -1;
                    r = 0;
                else
                    % Player won, dealer lost.
                    sp = -1;
                    r = 1;
                end
            end
    end
end
