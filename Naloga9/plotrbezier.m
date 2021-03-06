function plotrbezier(B,w,t)
% Plot rational bezier curve

[n,d] = size(B);
hold on 
% skelet 
% if d == 2
%     plot(B(:,1),B(:,2),'k-')
% elseif d == 3
%     plot3D(B(:,1),B(:,2),B(:,3),'k-')
% end



bb1 = rbezier(B,w,t);
F = farinove(B,w);
if d == 2
    plot(bb1(:,1),bb1(:,2),'b-')
    plot(B(:,1),B(:,2),'k-')
    plot(B(:,1),B(:,2),'ro')
    plot(F(:,1),F(:,2),'bo')
elseif d == 3
    % plot3D(bb1(:,1),bb1(:,2),bb1(:,3))
end
axis equal
hold off


end