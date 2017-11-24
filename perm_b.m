function q = perm_b(p)
    n = length(p) + 1;
    q = 1:n;
    for i = 1:n-1
        q([i p(i)]) = q([p(i) i]);
    end
end