function plotbezier3(Bx,By,Bz)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[n,h] = size(Bx);

T1 = [Bx(1,1) By(1,1) Bz(1,1)];
T2 = [Bx(1,h) By(1,h) Bz(1,h)];
T3 = [Bx(n,1) By(n,1) Bz(n,1)];
 
 k = 5;
 u = linspace(0,1,k);
 U = zeros(k*(k+1)/2,3);
 X = zeros(k*(k+1)/2,1);
 Y = zeros(k*(k+1)/2,1);

for i = 1:k
    for j = 1:i
            U(i*k+j,:) = [u(i) u(j) 1-u(i)-u(j)]; 
            X((i-1)*k+j) = u(i)*0 + u(j)*1 + 0*(1-u(i)-u(j)); 
            Y((i-1)*k+j) = u(i)*0 + u(j)*0 + 1*(1-u(i)-u(j)); 
    end
end
[X ,Y]
 
TRI = delaunay(X,Y);
b = bezier3(Bx,By,Bz,U);

trisurf(TRI,X,Y,b)
 

end

