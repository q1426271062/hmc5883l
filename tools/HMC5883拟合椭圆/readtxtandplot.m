%data=load('ubloxdouble-1.pos.stat');
fullname='C:\Users\lianran\Desktop\1\SAVE2020_7_3_11-47-22.DAT';
fidin=fopen(fullname); % ��test2.txt�ļ���fidin�Ǳ�ʶ�������򿪳ɹ�����1�����ɹ�����2             
%fidout=fopen('mkmatlab.txt','w');  % ����MKMATLAB.txt�ļ�
stateFile={};

x=[];%�߶Ƚ�����
y=[];%α��в�
xmax=[];
xmin=[];
ymax=[];
ymin=[];
%M=[];

i=1;

 while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin); % ���ļ�����
    S = regexp(tline, ',', 'split');%���������ַ����и�S = regexp(str, char, 'split')����str�Ǵ��ָ���ַ�����char����Ϊ�ָ������ַ�������ʹ��������ʽ�����ָ���Ľ������S�С�
    if(tline(4)~='M')%tline ����ڶ���������M
        continue;%~s����sֱ���������棬����while��һѭ�������߿���д��
    %if(tline(2)=='S'
    %   el(i)=str2num(S{7});rec(i)=str2num(S{8});
    %end
    end
    
    x(i)=str2num(S{12})%-15.4585;%��ȡx cell(��)��double
    y(i)=str2num(S{13})%-31.4666;%��ȡy
    %M(i)=[x(i),y(i)];
    i=i+1;
    
 end
% M=[1:1:i];
 %k=[x,y];%k/g����ƴ��xy
 XY1=cat(1,x,y)%1�����ı䣬2�����ı䣬ƴ��xy����
 XY=XY1'%ת��
 %save('xy','x','y')
 xmax = max(x);%�������ֵ max��max��x))���������ֵ�����Ԫ��
 xmin = min(x);
 ymax = max(y);
 ymin = min(y);
 xmean = (xmax + xmin)/2;
 ymean = (ymax + ymin)/2;
 %yy = spline(x,y)
% xlswrite('xy.xlsx',x);
 
figure();%����һ��ͼ��
plot(x,y,'.');%'.'����ͼ������'.'����ͼ��scatter��ɢ��ͼ
grid on;
%figure();
%plot(rec);
%grid on;

%����һ��
%A = importdata('xxx.txt','�ָ���','��������');
%data = A.data;

%��������һ��һ�ж��������ټ�顣�Դ��ļ��Ƚ���

%fidin=fopen('test.txt'); % 
%��
%test2.txt
%�ļ�

%fidout=fopen('mkmatlab.txt','w'); % 
%����
%MKMATLAB.txt
%�ļ�

%while ~feof(fidin) % 
%�ж��Ƿ�Ϊ
%�ļ�ĩβ

%tline=fgetl(fidin); % 
%���ļ���
%��

%if double(tline(1))>=48&&double(tline(1))<=57 % 
%�ж����ַ�
%�Ƿ�����ֵ

%fprintf(fidout,'%s\n\n',tline); % 
%%���������
%�У��Ѵ�������д���ļ�
%MKMATLAB.txt 
%continue % 
%����Ƿ���
%�ּ�����һ��ѭ��

%end 
%end 
%fclose(fidout); 

