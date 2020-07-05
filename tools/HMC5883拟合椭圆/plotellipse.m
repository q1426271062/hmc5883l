function f=plotellipse(a,b,xc,yc)%(a,b,xc,yc)28.0623 ,27.5693 , 15.0855 ,31.3660
% plotellipse(a,b,xc,yc) ����Բͼ��
%   (xc,yc)   ��������                                             
%    a        ��������                                                
%    b        �̰���                                         
%a=28.0623;
%b=27.5693;
%xc=15.0855;
%yc=31.3660;
theta=0:0.0314:2*pi;  

x=a*cos(theta)+xc;
y=b*sin(theta)+yc;
%figure();���ϻ�ֿ���������ˮ����һ��ͼ��
plot(x,y,'r');
hold on;

x1=(xc-a):0.05:(xc+a);
y1=yc;
plot(x1,y1,'.r');
hold on;

y2=(yc-b):0.05:(yc+b);
x2=xc;
plot(x2,y2,'.r');
hold on

if b>a
	   	y=y*(b/a)
else
	   	y=y*(a/b)
plot(x,y,'b');
end
hold on

x=x-xc;
y=y-yc;
if b>a
	    y=y*(b/a)
else
	   	y=y*(a/b)
plot(x,y,'g')

axis equal
grid on
end
