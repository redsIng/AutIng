function [P,i] = preference(arms)
n = size(arms,2);
P = zeros(1,n);
D=0;
for i=1:n
    D = D+exp(arms(i).H);
end
for i=1:n
    P(1,i) = (exp(arms(i).H))/D;
end
[P,i] = max(P);
end