function F = farinove(B,w)
% Opis:
% Vrne matriko farinovih tock oblike n x (2/3)
%
% Definicija:
%   F = farinove(B,w)
%
% Vhodni  podatki:
%   B matrika , katere  vrstica  predstavlja  koordinate
%       kontrolne  toèke  racionalne  Bezierjeve  krivulje ,
%   w seznam  uteži  racionalne  Bezierjeve  krivulje ,
%
% Izhodni  podatek:
%   F matrika n x (2/3) farinovih tock

[n,d] = size(B);

F = zeros(n-1,d);
for i = 1:n-1
    for j = 1:d
       F(i,j) = w(i)/(w(i)+w(i+1))*B(i,j)+ w(i+1)/(w(i)+w(i+1))*B(i+1,j);
    end
end
end