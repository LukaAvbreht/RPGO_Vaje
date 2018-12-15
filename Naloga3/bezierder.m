function db = bezierder (B ,r , t )
% Opis :
% bezierder vrne to?ke na krivulji , ki predstavlja odvod
% dane Bezierjeve krivulje
%
% Definicija :
% db = bezierder (B,r,t)
%
% Vhodni podatki :
% B matrika kontrolnih to?k Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% to?ko ,
% r stopnja odvoda , ki ga ra?unamo ,
% t seznam parameterov , pri katerih ra?unamo odvod
%
% Izhodni podatek :
% db matrika , v kateri vsaka vrstica predstavlja to?ko
% r- tega odvoda pri istoležnem parametru iz seznama t

[n, d] = size(B);
m = length(t);
db = NaN(m, d);

for i=1:d
    for j=1:m
        shema = decasteljau(B(:,i), t(j));
        shema
        d = diff(shema(1:r+1, n-r), r);
        d
        db(j, i) = (d(1)*(factorial(n)/factorial(n-r)));
    end
end

end