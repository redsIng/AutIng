function a = epsgreedy(s, w, eps, gridx, gridv, M, N, A)

if rand < eps
    a = randi(A);
else
    q = zeros(A, 1);
    for a = 1:A
        q(a) = w'*getFeatures(s, a, gridx, gridv, M, N, A);
    end
    a = find(q == max(q), 1, 'first');
end