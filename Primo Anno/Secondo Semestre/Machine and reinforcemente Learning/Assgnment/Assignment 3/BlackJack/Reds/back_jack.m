%Modello partita blackjack
function [sp,r]= back_jack(s,a)

[hand,dealer,usable] = ind2sub([10,10,2],s);
hand = hand+11;
switch a
    case 1 %hit_chiediamo carta
        [new_hand,new_usable] = hit(hand,usable);
        if new_hand>21
            sp=-1;
            r=-1;
        else
            sp = sub2ind([10,10,2],new_hand-11,dealer,new_usable);
            r=0;
        end
    case 2 %stick rimango fermo
        hand_dealer = dealer;
        if dealer == 1
            usable_dealer = 1;
        else
            usable_dealer = 2;
        end
        while hand_dealer<17
            [hand_dealer ,usable_dealer] = hit(hand_dealer,usable_dealer);
        end
        if hand_dealer >21
            sp =-1;
            r=1;
        else
            if hand_dealer > hand
                sp = -1;
                r=-1;
            elseif hand_dealer == hand
                sp=-1;
                r=0;
            else
                sp=-1;
                r=1;
            end
        end
end
end
