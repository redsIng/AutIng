function [sp, r, isTerminal] = dynamics_mountain_car(s, a, lbx, ubx, lbv, ubv)

xt = s(1);
vt = s(2);
at = a - 2;

xtp = xt + vt;
vtp = vt + 0.001*at - 0.0025*cos(3*xt);

if xtp < lbx
    vtp = 0;
end

if xtp >= ubx
    isTerminal = 1;
else
    isTerminal = 0;
end

xtp = min(max(xtp, lbx), ubx);
vtp = min(max(vtp, lbv), ubv);

sp = [xtp; vtp];

r = -1;

