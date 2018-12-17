% Visanje stopnje krivulje dvakrat:
% Racionalna krivulja, ki doloca kroznico:

B =[ 1     0;
     1     4;
    -3     2;
    -3    -2;
     1    -4;
     1     0];


w =[1.0000 0.2000 0.2000 0.2000 0.2000 1.0000];

[B,w] = rbezierelv(B,w);

B
w
% B = [1.0000         0;
%      1.0000    2.0000;
%     -1.6667    2.6667;
%     -3.0000         0;
%     -1.6667   -2.6667;
%      1.0000   -2.0000;
%      1.0000         0];
% 
% 
% w = [1.0000 0.3333 0.2000 0.2000 0.2000 0.3333 1.0000];

[B,w] = rbezierelv(B,w);

B
w

% B =[1.0000         0;
%     1.0000    1.3333;
%    -0.6000    2.4000;
%    -2.4286    1.1429;
%    -2.4286   -1.1429;
%    -0.6000   -2.4000;
%     1.0000   -1.3333;
%     1.0000         0];
% 
% 
% w = [1.0000 0.4286 0.2381 0.2000 0.2000 0.2381 0.4286 1.0000];

