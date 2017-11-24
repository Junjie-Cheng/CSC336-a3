function Question1a(~)
    warning('off');
    b = [1 1]';
    x = [1 -1]';
    fprintf('%s\t\t%s\t%s\n', 'gamma', 'error(1)', 'error(2)');
    for k = 1:10
        gam = 10 ^ (- 2*k);
        %A = [gam -1+gam; 2 1];
        
        L = [1 0; 2/gam 1];
        U = [gam -1+gam ;0 -1+2/gam];

        y = L\b;
        hat_x= U\y;

        err = hat_x - x;  

        fprintf('%e\t%e\t%e\n', gam, err(1), err(2));
    end
end
