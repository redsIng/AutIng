[x1,x2] = meshgrid(-2:.2:2,-2:0.2:2);
eps = 0.01;
% z = x .* exp(-x.^2 - y.^2); 
% [px,py] = gradient(z,.2,.15);
%contour(x,y,z), hold on
dx1 = x2;%dx1
dx2 = -x1-eps*(-1+x1.^2)*x2;

quiver(x1,x2,dx1,dx2)
