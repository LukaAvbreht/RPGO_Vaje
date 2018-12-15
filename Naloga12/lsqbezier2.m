function [Bx,By,Bz] = lsqbezier2(m,n,P,u,v)
% Opis:
%   lsqbezier2 vrne kontrolne to?ke Bezierjeve ploskve, ki
%   se po metodi najmanjših kvadratov najbolje prilega danim
%   podatkom
%
% Definicija:
%   [Bx,By,Bz] = lsqbezier2(m,n,P,u,v)
%
% Vhodni podatki:
%   m,n     parametra , ki dolo?ata stopnji Bezierjeve
%           ploskve iz tenzorskega produkta,
%   P       matrika , ki v vrsticah vsebuje to?ke v prostoru,       
%           za katere Želimo, da jih Bezierjeva ploskev
%           ?imbolje aproksimira,
%   u,v     seznama parametrov , ki dolo?ata , kateri to?ki v
%           domeni pripada posamezna to?ka iz P
%
% Izhodni podatki:
%   Bx,By,Bz    matrike velikosti n+1 x m+1, ki predstavljajo
%               kontrolne toÄ?ke Bezierjeve ploskve iz
%               tenzorskega produkta, ki se po metodi najmanjših
%               kvadratov najbolje prilega podatkom

[l,d] = size(P);

M = zeros(l,(m+1)*(n+1));
for k=1:l
    for i=0:n
        for j=0:m
            M(k,i*(m+1)+j+1) = nchoosek(n,i)*nchoosek(m,j)*(v(k))^i*(1-v(k))^(n-i)*(u(k))^j*(1-u(k))^(m-j);
        end
    end
end

x = M\P(:,1);
Bx = reshape(x,m+1,n+1)';

y = M\P(:,2);
By = reshape(y,m+1,n+1)';

z = M\P(:,3);
Bz = reshape(z,m+1,n+1)';