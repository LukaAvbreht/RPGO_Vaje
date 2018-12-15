function bb = decasteljau3(B,U)
% Opis:
%   decasteljau3  izra�una  vrednost  polinoma  dveh  spremenljivk pri
%   parametrih U  = (u,v w)
%
% Definicija:
%   b = decasteljau3(B,U)
% Vhodna  podatka:
%   B matrika  velikosti n+1 x n+1, ki  predstavlja
%       koeficiente  polinoma  dveh  spremenljivk  stopnje n v
%       Bezierjevi  obliki (element  matrike  na  mestu (i,j),
%       j  <= n+2-i, dolo�a  koeficient  polinoma z indeksom
%       (n+2-i-j, j-1, i-1)),
%   U vektor velikosti 1 x 3, v kateri  vrstice
%       predstavljavo  baricentri�ne  koordinate  to�k  glede
%       na  domenski  trikotnik , za  katere  izvajamo  razcvet
%       polinoma
%
% Izhodni  podatek:
%   bb vrednost polinoma , dolo�enega z matriko B,
%       v to�kah , dolo�enih z vektorjem u
[n,k] = size(B);
u = zeros(n-1,3);
for i = 1:n-1
    u(i,:) = U;
end

bb = blossom3(B,u);

end

