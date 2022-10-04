%% 实验一

%% 零极点增益（ZPK）模型
clear all;
num=[5,30,55,30];
den=[1,9,33,65];
sys1=tf(num,den);
[z p k]= tf2zp(num, den);
sys2=zpk(z,p,k);
disp('零点有');
disp(z);
disp('极点有');
disp(p);
disp('增益为');
disp(k)

%% 结构图化简——2-14(e)的传递函数
clear all;
sys_G1=tf([1,2],[1,6,10]);
sys_G2=tf([1,1],[1,3]);
sys_E1=(1/sys_G2-1)*feedback((sys_G1),(1/sys_G2),-1);
sys_E2=(1/sys_G1+1)*feedback((sys_G2),(1/sys_G1),-1);
sys_E=(sys_E1+sys_E2);
sys3=feedback(sys_E,1,-1)

%% 控制系统稳定性判断——3-2(5)的稳定性
clear all;
num=[1];
den=[1,3,5,9,8,6,4];
[z p k]= tf2zp(num, den);
ii=find(real(z)>0);n1=length(ii);
jj=find(real(p)>0);n2=length(jj);
disp('极点有');
disp(p);
if(n2>0)
    disp('系统是稳定的')
else
    disp('系统是不稳定的')
end

%% 求解方程组
clear all;
% 解x^2+100*x+99=0
syms x ; %定义x是未知量
eqn=x^2+100*x+99==0;% 定义方程
solX1=solve(eqn,x) % 解方程
clear all;
% 解x^3+1=0
syms x; %定义x是未知量
eqn=x^3+1==0;% 定义方程
solX2=solve(eqn,x) % 解方程
clear all;
% 解9*x+8*y=10,13*x+14*y=12
syms x y; %定义x,y是未知量
eqn=[9*x+8*y==10,13*x+14*y==12];% 定义方程
vars=[x,y];%定义求解的未知量
[solX1,solY1]=solve(eqn,vars) % 解方程
clear all;
% 解x^2+y^2=10,2*x+3*y=0
syms x y; %定义x,y是未知量
eqn=[x^2+y^2==10,2*x+3*y==0];% 定义方程
vars=[x,y];%定义求解的未知量
[solX2,solY2]=solve(eqn,vars) % 解方程
clear all;
% 解2*x+3*y+z=4,4*x+2*y+3*z=17,7*x+y-z=1
syms x y z; %定义x,y,z是未知量
eqn=[2*x+3*y+z==4,4*x+2*y+3*z==17,7*x+y-z==1];% 定义方程
vars=[x,y,z];%定义求解的未知量
[solX1,solY1,solZ1]=solve(eqn,vars) % 解方程
clear all;
% 解4*x+5*y+z=3,x+2*y+4*z=15
syms x y z; %定义x,y,z是未知量,
eqn=[4*x+5*y+z==3,x+2*y+4*z==15];% 定义方程
vars=[x,y];%定义求解的未知量
[solX1,solY1]=solve(eqn,vars) % 解方程
clear all;
% 解4*x+5*y=3,x+2*y=15，3*x+y=12
syms x y; %定义x,y是未知量,
eqn=[4*x+5*y==3,x+2*y==15,3*x+y==12];% 定义方程
vars=[x,y];%定义求解的未知量
[solX1,solY1]=solve(eqn,vars) % 解方程
%对于超定方程可以求最小二乘解
A=[4,5;1,2;3,1];B=[3;15;12];
solxy=A\B
clear all;
% 解2*x+3*y=1,(-4)*x-6*y=-2
syms x y; %定义x,y是未知量,
eqn=[2*x+3*y==1,(-4)*x-6*y==-2];% 定义方程
vars=[x,y];%定义求解的未知量
[solX1,solY1]=solve(eqn,vars) % 解方程

