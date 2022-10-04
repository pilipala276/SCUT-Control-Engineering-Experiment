%% 实验绪论

%% 基本变量与表达式

a=13;
b=25;
ab=a*b;
disp(ab);
disp('hello world');

%% 图像处理应用
clear all;
I = imread('lab0.png');
subplot(2,2,1);imshow(I);
xlabel('(a)灰度图像');
level = graythresh(I);
BW = im2bw(I,level);subplot(2,2,2);imshow(BW);
xlabel('(b)二值图像');
load trees;
BW = im2bw(X,map,0.4);subplot(2,2,3);imshow(X,map);
xlabel('(c)索引图像');
subplot(2,2,4);imshow(BW);
xlabel('(d)二值图像');
