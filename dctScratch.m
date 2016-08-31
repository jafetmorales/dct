clear all;clc; close all;

% VERIFICATION 1: FORWARD AND BACKWARD CONSISTENCY
x=[1 2 3 4 5 4 3 2 1];
figure(1);stem(x);
title('x[n]');
X=ourDCT(x);
figure(2);stem(X);
title('DCT\{x[n]\}');
xi=ourDCTi(X);
figure(3);stem(xi);
title('DCTinv\{X[n]\}');

% VERIFICATION 2: HOMOGENEITY
x1=[1 2 3 4 5 4 3 2 1];
figure(4);stem(x1);
title('x[n]');
x2=2*x1;
figure(5);stem(x2);
title('2*x[n]');
X1=2*ourDCT(x1);
figure(6);stem(X1);
title('2*DCT\{x[n]\}');
X2=ourDCT(x2);
figure(7);stem(X2);
title('DCT\{2*x[n]\}');

% VERIFICATION 3: SUPERPOSITION
x1=[1 2 3 4 5 4 3 2 1];
figure(8);stem(x1);
title('x_1[n]');
x2=[1 1 1 0 0 0 0 0 0];
figure(9);stem(x2);
title('x_2[n]');
X1=ourDCT(x1);
figure(10);stem(X1);
title('DCT\{x_1[n]\}');
X2=ourDCT(x2);
figure(11);stem(X2);
title('DCT\{x_2[n]\}');
X3=ourDCT(x1+x2);
figure(12);stem(X3);
title('DCT\{x_1[n]+x_2[n]\}');
X4=X1+X2;
figure(13);stem(X4);
title('DCT\{x_1[n]\}+DCT\{x_2[n]\}');

% NO LINEAR CONVOLUTION DEMONSTRATION
x=[0 0 0 1 1 0 0 0]
h=[1 0 0 0 0 0 0 0]
figure(14);stem(x);
title('x[n]');
figure(15);stem(h);
title('h[n]');
X=ourDCT(x);
H=ourDCT(h);
inverso=ourDCTi(X.*H);
figure(16);stem(inverso);
title('DCTinverse\{DCT\{x[n]\} X DCT\{h[n]\}\}');
figure(17);stem(conv(x,h));
title('x[n]*h[n]');

% NOTE: WE DO NOT GET LINEAR CONVOLUTION
% WHEN WE TAKE THE INVERSE OF THE POINT-WISE
% MULTIPLICATION OF THE TWO SEQUENCES IN THE DCT DOMAIN
Xml=dct(x);
figure(17);stem(Xml);
Hml=dct(h);
figure(18);stem(Hml);
inversoml=idct(Xml.*Hml);
figure(19);stem(inversoml);

stem(x);
title('x[n]');
figure();
stem(X);
title('X[n]');
figure();
stem(ix);
title('inverse DCT of X[n]');

ourDCTi(ourDCT(x))


clear all; close all;
% DCT IN TWO DIMENSIONS TEST BENCH
img=imread('pumpkin.jpg');

figure(1);imshow(img,[]);
img=ourDCT2D(img);
% figure(2);imshow(exp(img),[]);
img=ourDCT2Di(img);
