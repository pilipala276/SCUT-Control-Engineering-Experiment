%% ʵ��һ

%% �㼫�����棨ZPK��ģ��
clear all;
num=[5,30,55,30];
den=[1,9,33,65];
sys1=tf(num,den);
[z p k]= tf2zp(num, den);
sys2=zpk(z,p,k);
disp('�����');
disp(z);
disp('������');
disp(p);
disp('����Ϊ');
disp(k)

%% �ṹͼ���򡪡�2-14(e)�Ĵ��ݺ���
clear all;
sys_G1=tf([1,2],[1,6,10]);
sys_G2=tf([1,1],[1,3]);
sys_E1=(1/sys_G2-1)*feedback((sys_G1),(1/sys_G2),-1);
sys_E2=(1/sys_G1+1)*feedback((sys_G2),(1/sys_G1),-1);
sys_E=(sys_E1+sys_E2);
sys3=feedback(sys_E,1,-1)

%% ����ϵͳ�ȶ����жϡ���3-2(5)���ȶ���
clear all;
num=[1];
den=[1,3,5,9,8,6,4];
[z p k]= tf2zp(num, den);
ii=find(real(z)>0);n1=length(ii);
jj=find(real(p)>0);n2=length(jj);
disp('������');
disp(p);
if(n2>0)
    disp('ϵͳ���ȶ���')
else
    disp('ϵͳ�ǲ��ȶ���')
end

%% ��ⷽ����
clear all;
% ��x^2+100*x+99=0
syms x ; %����x��δ֪��
eqn=x^2+100*x+99==0;% ���巽��
solX1=solve(eqn,x) % �ⷽ��
clear all;
% ��x^3+1=0
syms x; %����x��δ֪��
eqn=x^3+1==0;% ���巽��
solX2=solve(eqn,x) % �ⷽ��
clear all;
% ��9*x+8*y=10,13*x+14*y=12
syms x y; %����x,y��δ֪��
eqn=[9*x+8*y==10,13*x+14*y==12];% ���巽��
vars=[x,y];%��������δ֪��
[solX1,solY1]=solve(eqn,vars) % �ⷽ��
clear all;
% ��x^2+y^2=10,2*x+3*y=0
syms x y; %����x,y��δ֪��
eqn=[x^2+y^2==10,2*x+3*y==0];% ���巽��
vars=[x,y];%��������δ֪��
[solX2,solY2]=solve(eqn,vars) % �ⷽ��
clear all;
% ��2*x+3*y+z=4,4*x+2*y+3*z=17,7*x+y-z=1
syms x y z; %����x,y,z��δ֪��
eqn=[2*x+3*y+z==4,4*x+2*y+3*z==17,7*x+y-z==1];% ���巽��
vars=[x,y,z];%��������δ֪��
[solX1,solY1,solZ1]=solve(eqn,vars) % �ⷽ��
clear all;
% ��4*x+5*y+z=3,x+2*y+4*z=15
syms x y z; %����x,y,z��δ֪��,
eqn=[4*x+5*y+z==3,x+2*y+4*z==15];% ���巽��
vars=[x,y];%��������δ֪��
[solX1,solY1]=solve(eqn,vars) % �ⷽ��
clear all;
% ��4*x+5*y=3,x+2*y=15��3*x+y=12
syms x y; %����x,y��δ֪��,
eqn=[4*x+5*y==3,x+2*y==15,3*x+y==12];% ���巽��
vars=[x,y];%��������δ֪��
[solX1,solY1]=solve(eqn,vars) % �ⷽ��
%���ڳ������̿�������С���˽�
A=[4,5;1,2;3,1];B=[3;15;12];
solxy=A\B
clear all;
% ��2*x+3*y=1,(-4)*x-6*y=-2
syms x y; %����x,y��δ֪��,
eqn=[2*x+3*y==1,(-4)*x-6*y==-2];% ���巽��
vars=[x,y];%��������δ֪��
[solX1,solY1]=solve(eqn,vars) % �ⷽ��

