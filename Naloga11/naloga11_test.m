Bx = [0 3 5 6;
      1 4 5 7;
      0 3 5 6];
  
By = [-1 -2 -1 -2;
      1 2 1 2;
      5 5 6 5];
  
Bz = [-3 -2 0 -5;
      3 6 3 2;
      -1 4 -2 8];
  
u = linspace(0,1,50);
v = linspace(0,1,50);
[bx,by,bz] = bezier2(Bx ,By ,Bz,u,v);
  
hold on;
m = mesh(bx,by,bz);
set(m,'EdgeColor','k');
set(m,'FaceColor','k');
surf(bx,by,bz);
hold off;
bx(10:10:50,10:10:50);
by(10:10:50,10:10:50);