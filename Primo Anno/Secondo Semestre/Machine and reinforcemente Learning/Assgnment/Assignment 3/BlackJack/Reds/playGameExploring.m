function [s,a,r] = playGameExploring(s0,a0,policy)
s = s0;
a=[];
r=[];

while s(end)~=-1
    St = s(end);
    if isempty(a)
        At=a0;
    else
        At = policy(St);
    end
    [St1,Rt1] = back_jack(St,At);
    s = [s,St1];
    a = [a,At];
    r = [r,Rt1];
end
end
