format long;
T1 = [0 0];
T2 = [5 1];
T3 = [3 3];

x = 1;
y = 1;
T = [x y];

[u1,v1,w1] = pointbary(T1,T2,T3,[0,0]);
[u2,v2,w2] = pointbary(T1,T2,T3,[1,1]);
[u3,v3,w3] = pointbary(T1,T2,T3,[4,2]);

P1 = [u1,v1,w1];
P2 = [u2,v2,w2];
P3 = [u3,v3,w3];

DP1 = vectorbary(T1,T2,T3,[0,0]);
DP2 = vectorbary(T1,T2,T3,[1,1]);
DP3 = vectorbary(T1,T2,T3,[4,2]);

[a,b,c] = vectorbary(T1,T2,T3,[1,0]);
Dx = [a,b,c];
[a,b,c] = vectorbary(T1,T2,T3,[0,1]);
Dy = [a,b,c];

B = [2 1 -1 0;
    5 3 -4 NaN;
    0 0 NaN NaN;
    1 NaN NaN NaN];

U1 = [u1,v1,w1;
    u1,v1,w1;
    u1,v1,w1;];

U2 = [u2,v2,w2;
    u2,v2,w2;
    u2,v2,w2;];

U3 = [u3,v3,w3;
    u3,v3,w3;
    u3,v3,w3;];

blossom3(B,U1);
blossom3(B,U2);
blossom3(B,U3);

decasteljau3(B,[u1,v1,w1]);
decasteljau3(B,[u2,v2,w2]);
decasteljau3(B,[u3,v3,w3]);

% vrednost polinoma v tockah P1, P2 in P3 v smereh x
a = decasteljau3(B,P1);
b = decasteljau3(B,P2);
c = decasteljau3(B,P1);
disp(['vrednost p v         P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);


% odvodi v tockah P1, P2 in P3 v smereh x
a = odvod(B,Dx,P1);
b = odvod(B,Dx,P2);
c = odvod(B,Dx,P3);
disp(['Odvod dx v           P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);

% odvodi v tockah P1, P2 in P3 v smereh y
a = odvod(B,Dy,P1);
b = odvod(B,Dy,P2);
c = odvod(B,Dy,P3);
disp(['Odvod dy v           P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);

% mesani odvodi v tockah P1, P2 in P3 v smereh x in y
D = [Dx; Dy];
a = odvod(B,D,P1);
b = odvod(B,D,P2);
c = odvod(B,D,P3);
disp(['Mesani odvod dx dy v P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);

% dvojni odvodi v tockah P1, P2 in P3 v smereh x
D = [Dx; Dx];
a = odvod(B,D,P1);
b = odvod(B,D,P2);
c = odvod(B,D,P3);
disp(['Dvojni odvod dx v    P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);

% dvojni odvodi v tockah P1, P2 in P3 v smereh y
D = [Dy; Dy];
a = odvod(B,D,P1);
b = odvod(B,D,P2);
c = odvod(B,D,P3);
disp(['Dvojni odvod dy v    P1 P2 P3: ',num2str(a),', ',num2str(b),', ',num2str(c)]);



