%% ʵ������

%% ������������ʽ

a=13;
b=25;
ab=a*b;
disp(ab);
disp('hello world');

%% ͼ����Ӧ��
clear all;
I = imread('lab0.png');
subplot(2,2,1);imshow(I);
xlabel('(a)�Ҷ�ͼ��');
level = graythresh(I);
BW = im2bw(I,level);subplot(2,2,2);imshow(BW);
xlabel('(b)��ֵͼ��');
load trees;
BW = im2bw(X,map,0.4);subplot(2,2,3);imshow(X,map);
xlabel('(c)����ͼ��');
subplot(2,2,4);imshow(BW);
xlabel('(d)��ֵͼ��');
