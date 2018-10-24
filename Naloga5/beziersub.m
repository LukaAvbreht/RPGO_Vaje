function BS = beziersub (B , t, k)
% Opis : beziersub izvede subdivizijo Bezierjeve krivulje
%
% Definicija :
% BS = beziersub (B,t)
%
% Vhodni podatki :
% B matrika kontrolnih tock Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% tocko ,
% t parameter subdivizije Bezierjeve krivulje
%
% Izhodni podatek :
% BS celica , ki vsebuje kontrolne tocke dveh krivulj , ki
% jih dobimo s subdivizijo prvotne Bezierjeve krivulje

n = length(B);
BS = cell(1, 2^k);

d1 = decasteljau(B(:, 1), t);
d2 = decasteljau(B(:, 2), t);

BS{1} = [d1(1,:)' d2(1,:)'];
BS{2^(k-1)+1} = [diag(fliplr(d1)) diag(fliplr(d2))];

for i=2:k
    for j=1:2^(k-i+1):2^k
        d1 = decasteljau(BS{j}(:, 1), t);
        d2 = decasteljau(BS{j}(:, 2), t);  
        
        BS{j} = [d1(1,:)' d2(1,:)'];
        BS{j+2^(k-i)} = [diag(fliplr(d1)) diag(fliplr(d2))];
    end
end

end