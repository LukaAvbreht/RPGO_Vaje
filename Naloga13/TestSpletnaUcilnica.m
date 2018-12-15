format short;
% Koeficienti polinoma p v Bezierjevi obliki:
B = [2     5    -1     0;
     1     3    -4   NaN;
     0     0   NaN   NaN;
     1   NaN   NaN   NaN];

% Domenski trikotnik:
T1 = [0     0];
T2 = [5     1];
T3 = [3     3];
P1 = [0.000000,0.000000];
P2 = [1.000000,1.000000];
P3 = [4.000000,2.000000];

[u,v,w] = pointbary(T1,T2,T3,P1);
BP1 = [u,v,w];
[u,v,w] = pointbary(T1,T2,T3,P2);
BP2 = [u,v,w];
[u,v,w] = pointbary(T1,T2,T3,P3);
BP3 = [u,v,w];

[u,v,w] = vectorbary(T1,T2,T3,[1,0]);
BVx = [u,v,w];
[u,v,w] = vectorbary(T1,T2,T3,[0,1]);
BVy = [u,v,w];



fprintf('Baricentricne tocke P1 = (%0.6f,%0.6f): (%0.6f,%0.6f,%0.6f)\n',P1(1),P1(2),BP1(1),BP1(2),BP1(3));
fprintf('Baricentricne tocke P2 = (%0.6f,%0.6f): (%0.6f,%0.6f,%0.6f)\n',P2(1),P2(2),BP2(1),BP2(2),BP2(3));
fprintf('Baricentricne tocke P3 = (%0.6f,%0.6f): (%0.6f,%0.6f,%0.6f)\n',P3(1),P3(2),BP3(1),BP3(2),BP3(3));
fprintf('Baricentricne vektorja x = (1,0): (%0.6f,%0.6f,%0.6f)\n',BVx(1),BVx(2),BVx(3));
fprintf('Baricentricne vektorja y = (0,1): (%0.6f,%0.6f,%0.6f)\n',BVy(1),BVy(2),BVy(3));

% Baricentricne koordinate tocke P1 = (0.000000,0.000000): (1.000000, 0.000000, 0.000000)
% Baricentricne koordinate tocke P2 = (1.000000,1.000000): (0.666667, 0.000000, 0.333333)
% Baricentricne koordinate tocke P3 = (4.000000,2.000000): (0.000000, 0.500000, 0.500000)
% Baricentricne koordinate vektorja x = (1.000000,0.000000): (-0.166667, 0.250000, -0.083333)
% Baricentricne koordinate vektorja y = (0.000000,1.000000): (-0.166667, -0.250000, 0.416667)



% Vrednosti p     v tockah P1, P2, P3: 2.000000, 1.074074, -1.375000,
% Vrednosti Dx p  v tockah P1, P2, P3: 2.500000, 1.861111, -1.937500
% Vrednosti Dy p  v tockah P1, P2, P3: -3.500000, -2.638889, -0.062500
% Vrednosti Dxx p v tockah P1, P2, P3: -3.125000, -3.013889, 0.020833
% Vrednosti Dxy p v tockah P1, P2, P3: 2.625000, 2.236111, -0.854167
% Vrednosti Dyy p v tockah P1, P2, P3: -2.125000, -1.013889, 2.020833