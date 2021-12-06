function [gridx, gridv] = build_tiles(lbx, ubx, lbv, ubv, M, N)

off = [1; 3];
off = off./max(off);

dx = (ubx - lbx)/M;
TX = lbx - dx:dx:ubx;

dv = (ubv - lbv)/M;
TV = lbv - dv:dv:ubv;

gridx = zeros(N, length(TX));
gridv = zeros(N, length(TV));

gridx(1, :) = TX;
gridv(1, :) = TV;

for ii = 2 : N
    gridx(ii, :) = TX + off(1)*dx/N*(ii-1);
    gridv(ii, :) = TV + off(2)*dv/N*(ii-1);
end