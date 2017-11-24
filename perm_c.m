function y = perm_c(q,x)
    n = length(q);
    y = zeros(n,1);
    for i = 1:n
        y(i) = x(q(i));
    end
end