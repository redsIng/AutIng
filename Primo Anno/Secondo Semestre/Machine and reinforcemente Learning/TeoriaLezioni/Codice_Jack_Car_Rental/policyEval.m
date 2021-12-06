function vpi = policyEval(P, R, gamma, pi, v)

S = size(P,1);

Ppi = zeros(S,S);
Rpi = zeros(S,1);
for s = 1:S
    Ppi(s,:) = P(s,:,pi(s));
    Rpi(s) = R(s,pi(s));
end

while true
    vprec = v;
    v = Rpi + gamma*Ppi*vprec;
    if norm(vprec-v, Inf) < 1e-6
        break
    end
end

vpi = v;