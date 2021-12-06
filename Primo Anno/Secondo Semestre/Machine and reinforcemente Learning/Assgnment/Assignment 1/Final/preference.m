function [P, i, argMaxs] = preference(arms,t)
n = size(arms,2);
P = zeros(1,n);
qtList = zeros(1,n);
D = 0;
for i=1:n
    D = D+exp(arms(i).H(t));
    qtList(i) = arms(i).q(t);
end
for i=1:n
    P(1,i) = (exp(arms(i).H(t)))/D;
end
[P, i] = max(P);
[~, argMaxs] = max(qtList);
end