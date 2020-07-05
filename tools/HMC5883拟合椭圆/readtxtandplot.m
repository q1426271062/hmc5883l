%data=load('ubloxdouble-1.pos.stat');
fullname='C:\Users\lianran\Desktop\1\SAVE2020_7_3_11-47-22.DAT';
fidin=fopen(fullname); % 打开test2.txt文件，fidin是标识符，即打开成功返回1，不成功返回2             
%fidout=fopen('mkmatlab.txt','w');  % 创建MKMATLAB.txt文件
stateFile={};

x=[];%高度角数据
y=[];%伪距残差
xmax=[];
xmin=[];
ymax=[];
ymin=[];
%M=[];

i=1;

 while ~feof(fidin) % 判断是否为文件末尾               
    tline=fgetl(fidin); % 从文件读行
    S = regexp(tline, ',', 'split');%，隔开，字符串切割S = regexp(str, char, 'split')其中str是待分割的字符串，char是作为分隔符的字符（可以使用正则表达式）。分割出的结果存在S中。
    if(tline(4)~='M')%tline 行里第二个不等于M
        continue;%~s即非s直接跳过下面，进入while新一循环，或者可以写成
    %if(tline(2)=='S'
    %   el(i)=str2num(S{7});rec(i)=str2num(S{8});
    %end
    end
    
    x(i)=str2num(S{12})%-15.4585;%读取x cell(组)变double
    y(i)=str2num(S{13})%-31.4666;%读取y
    %M(i)=[x(i),y(i)];
    i=i+1;
    
 end
% M=[1:1:i];
 %k=[x,y];%k/g横向拼接xy
 XY1=cat(1,x,y)%1行数改变，2列数改变，拼接xy矩阵
 XY=XY1'%转置
 %save('xy','x','y')
 xmax = max(x);%求行最大值 max（max（x))是这行最大值中最大元素
 xmin = min(x);
 ymax = max(y);
 ymin = min(y);
 xmean = (xmax + xmin)/2;
 ymean = (ymax + ymin)/2;
 %yy = spline(x,y)
% xlswrite('xy.xlsx',x);
 
figure();%创建一个图集
plot(x,y,'.');%'.'画点图，不加'.'是线图，scatter是散点图
grid on;
%figure();
%plot(rec);
%grid on;

%方法一：
%A = importdata('xxx.txt','分隔符','跳过行数');
%data = A.data;

%方法二：一行一行读进来，再检查。对大文件比较慢

%fidin=fopen('test.txt'); % 
%打开
%test2.txt
%文件

%fidout=fopen('mkmatlab.txt','w'); % 
%创建
%MKMATLAB.txt
%文件

%while ~feof(fidin) % 
%判断是否为
%文件末尾

%tline=fgetl(fidin); % 
%从文件读
%行

%if double(tline(1))>=48&&double(tline(1))<=57 % 
%判断首字符
%是否是数值

%fprintf(fidout,'%s\n\n',tline); % 
%%如果是数字
%行，把此行数据写入文件
%MKMATLAB.txt 
%continue % 
%如果是非数
%字继续下一次循环

%end 
%end 
%fclose(fidout); 

