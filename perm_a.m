function y = perm_a(p, x)
    n = length(x);
    y = x;
    for i = 1:n-1
        y([i p(i)]) = y([p(i) i]);
   	end
end