plot(XY(:,1),XY(:,2),'.')
hold on
result=fitellipse(XY);
fprintf('a  %8.5f\n',result(3))
fprintf('b  %8.5f\n',result(4))
fprintf('xc %8.5f\n',result(1))
fprintf('yc %8.5f\n',result(2))
plotellipseoriginal(result(3),result(4),result(1),result(2))
%d1=[]
%for i=1:1:112
%    d1(i) = atan(XY(i,1)/XY(i,2))*180/pi
%end

