function bb = odvod(B,smeri,ostali)

[m,k] = size(smeri);
[n,k] = size(B);
u = zeros(n-1,3);
for i = 1:m
    for j = 1:3
        u(i,j) = smeri(i,j); 
    end
end
for i = m+1:n-1
   u(i,:) = ostali; 
end

bb = factorial(n-1) / factorial(n-m-1) * blossom3(B,u);

end

