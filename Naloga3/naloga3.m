B = [-2/3 -4/5; 1/3, 1/5; 0 0; -1/3 1/5; 2/3 -4/5];
t = 0:0.01:1;

[n, ~] = size(B);

plotbezier(B, t);
pause;

for i=1:2
    clf;
    plotbezier(diff(B, i)*factorial(n)/factorial(n-i), t);
    b = bezierder(B, i, t);
    plot(b(:,1), b(:,2), 'r');
    hold off;
    pause;
end