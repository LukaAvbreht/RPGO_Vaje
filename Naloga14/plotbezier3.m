function plotbezier3(Bx,By,Bz)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[n,h] = size(Bx);

T1 = [0 0];
T2 = [1 0];
T3 = [0 1];

k = 10;
[TRI,u] = trimeshgrid(k);
X = zeros((k+2)*(k+1)/2,1);
Y = zeros((k+2)*(k+1)/2,1);

ind = 1;
for i = 1:k+1
    for j = 1:i
            X(ind) = u(i)*T1(1) + u(j)*T2(1) + T3(1)*(1-u(i)-u(j)); 
            Y(ind) = u(i)*T1(2) + u(j)*T2(2) + T3(2)*(1-u(i)-u(j)); 
            ind = ind + 1; 
    end
end

H = delaunay(X,Y);
H
size(H)
size(TRI)
b = bezier3(Bx,By,Bz,u);

b

trisurf(TRI,b(:,1),b(:,2),b(:,3))
 

end

