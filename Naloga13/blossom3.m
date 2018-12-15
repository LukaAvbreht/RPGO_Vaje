function bb = blossom3(B,U)
% Opis:
%   blossom3  izraèuna  razcvet  polinoma  dveh  spremenljivk
%
% Definicija:
%   b = blossom3(B,U)
% Vhodna  podatka:
%   B matrika  velikosti n+1 x n+1, ki  predstavlja
%       koeficiente  polinoma  dveh  spremenljivk  stopnje n v
%       Bezierjevi  obliki (element  matrike  na  mestu (i,j),
%       j  <= n+2-i, doloèa  koeficient  polinoma z indeksom
%       (n+2-i-j, j-1, i-1)),
%   u matrika  velikosti n x 3, v kateri  vrstice
%       predstavljavo  baricentriène  koordinate  toèk  glede
%       na  domenski  trikotnik , za  katere  izvajamo  razcvet
%       polinoma
%
% Izhodni  podatek:
%   bb vrednost  razcveta  polinoma , doloèenega z matriko B,
%       v toèkah , doloèenih z matriko u

[n,k] = size(B);
b = B;
for i = 1:n-1
   bari = U(i,:);
   for j = 1:n-1
      for k = 1:n-j
         b(j,k) = bari(1)*b(j,k) + bari(2)*b(j,k+1) + bari(3)*b(j+1,k);
      end
   end
end
bb = b(1,1);
end
