% Function that models what happens when a player chooses to hit.
% Roberto Masocco
% 2/4/2021

function [new_hand, new_usable] = hit(hand, usable)
    % Draw a card.
    card = min(randi(13), 10);
    if card == 1
        % Card is an ace. What to do with it?
        new_hand = hand + 11;
        if new_hand > 21
            new_hand = new_hand - 10;
            new_usable = 2;
        else
            new_usable = 1;
        end
    else
        % Card isn't an ace.
        new_hand = hand + card;  % Add the card to the hand.
        if usable == 1
            % Make the ace count accordingly.
            if new_hand > 21
                new_usable = 2;  % Unusable ace.
                new_hand = new_hand - 10;  % Decrease hand.
            else
                % Ace still counts high.
                new_usable = 1;
            end
        else
            % Still no usable ace.
            new_usable = 2;
        end
    end
end