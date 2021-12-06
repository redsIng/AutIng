function [s,a,r] = playGame(s0,policy)
s = s0;
a=[];
r=[];

while s(end)~=-1
    St = s(end);
    At = policy(St);
    [St1,Rt1] = back_jack(St,At);
    s = [s,St1];
    a = [a,At];
    r = [r,Rt1];
end
end
