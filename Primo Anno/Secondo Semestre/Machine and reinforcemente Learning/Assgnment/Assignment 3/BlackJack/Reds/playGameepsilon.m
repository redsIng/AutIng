function [s,a,r] = playGameepsilon(s0,policy,epsilon)
s = s0;
a=[];
r=[];

while s(end)~=-1
    St = s(end);
    if rand<=epsilon
        At = randi(2);
    else
        
        At = policy(St);
    end
    [St1,Rt1] = back_jack(St,At);
    s = [s,St1];
    a = [a,At];
    r = [r,Rt1];
end
end
