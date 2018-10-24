for i = 1:6
    p = zeros(1,6);
    p(i) = 1;
    x = 0:0.001:1;
    px = polyval(bernstein2power(p), x);
    
    plot(x, px);
    hold on
end

hold off