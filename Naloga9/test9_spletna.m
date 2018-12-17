% Racionalna krivulja in utezi:

B = [0     0;
     2     3;
     5     0;
     3    -1;
     2    -1];


w = [0.5000    0.7000    0.8000    1.0000    0.6000];

% Tocke na racionalni krivulji:

b = rbezier(B,w,linspace(0,1,8));

b
% ans =0         0
%      1.4803    1.2342
%      2.5866    1.1614
%      3.2243    0.6162
%      3.4116   -0.0074
%      3.2273   -0.5261
%      2.7542   -0.8687
%      2.0000   -1.0000