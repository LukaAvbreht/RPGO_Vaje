function [u,v,w] = vectorbary(T1,T2,T3,T)
% Pretvori toco x,y v baricentricne koordinate dolocene z T1, T2, in T3

A = [1 1 1;
    T1(1), T2(1), T3(1);
    T1(2), T2(2), T3(2)];

b = [0; T(1); T(2)];
res = A\b;

u = res(1);
v = res(2);
w = res(3);

end