% Simple policy that e.g. the dealer applies.
% Roberto Masocco
% 2/4/2021

function a = basic_policy(s)
    [hand, ~, ~] = ind2sub([10, 10, 2], s);
    hand = hand + 11;
    % This is exactly what the dealer does.
    if hand < 17
        a = 1;
    else
        a = 2;
    end
end