<<<<<<< HEAD
D = [
    -5 0;
    -4 1;
    -2 -1;
    0 3;
    3 0;
    5 2;
    7 -1
    ];

P  = D(2:6,:)            % [-4 1;  -2  -1; 0 3; 3 0; 5 2];
ue = alphaparam(P,0);    % [0 1 2 3 4]
uc = alphaparam(P ,0.5); % [0  1.6818  3.7965  5.8563  7.5381]
ut = alphaparam(P,1);    % [0  2.8284  7.3006  11.5432  14.3716]

B1 = beziercubspline(ue,D);

[B1{2} B1{3}]

B2 = beziercubspline(uc,D);

[B2{2} B2{3}]

B3 = beziercubspline(ut,D);

=======
D = [
    -5 0;
    -4 1;
    -2 -1;
    0 3;
    3 0;
    5 2;
    7 -1
    ];

P  = D(2:6,:)            % [-4 1;  -2  -1; 0 3; 3 0; 5 2];
ue = alphaparam(P,0);    % [0 1 2 3 4]
uc = alphaparam(P ,0.5); % [0  1.6818  3.7965  5.8563  7.5381]
ut = alphaparam(P,1);    % [0  2.8284  7.3006  11.5432  14.3716]

B1 = beziercubspline(ue,D);

[B1{2} B1{3}]

B2 = beziercubspline(uc,D);

[B2{2} B2{3}]

B3 = beziercubspline(ut,D);

>>>>>>> 81ec41db62e385affeb429c2afb3116050441a8d
[B3{2} B3{3}]