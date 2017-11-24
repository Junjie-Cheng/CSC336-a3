function Question2c(~)
    n = 60;
    A = ones(n,n);
    A = A - triu(A);
    A = eye(n) - A;
    A = A + [ones(n-1,1); 0] * [zeros(1,n-1), 1];

    Q = diag(ones(n-1,1),1);
    Q(n,1) = 1;

    [L1, U1, P1] = lu(A);

    [L2, U2] = lu(A*Q);

    fprintf('%s %d.\n', 'The element with largest absolute value in U2 is', max(max(abs(U2))));

    x = ones(n,1);
    b = A*x;

    y = L1\b;
    x1 = U1\y;

    fprintf('%s %d\n', 'norm(x-x1, inf) =', norm(x-x1, inf));
    y = L2\b;
    z = U2\y;
    x2 = Q * z;
    fprintf('%s %d\n', 'norm(x-x2, inf) =', norm(x-x2, inf));

end