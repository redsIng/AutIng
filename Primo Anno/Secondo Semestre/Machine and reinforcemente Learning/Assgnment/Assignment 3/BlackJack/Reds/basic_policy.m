function a = basic_policy(s)
[hand,dealer,usable] = ind2sub([10,10,2],s);
hand = hand+11;

if hand<17
    a=1;
else
    a=2;
end

end
