function [new_hand, new_usable] = hit(hand, usable)

card = min(randi(13), 10);

if card == 1
    new_hand = hand + 11;
    if new_hand > 21
        new_hand = new_hand - 10;
        new_usable = 2;
    else
        new_usable = 1;
    end
else
    new_hand = hand + card;
    if usable == 1 % usable ace
        if new_hand > 21
            new_usable = 2; % unusable ace
            new_hand = new_hand - 10;
        else
            new_usable = 1;
        end
    else
        new_usable = 2;
    end
end
    