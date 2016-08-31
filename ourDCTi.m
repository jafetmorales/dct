% INVERSE DCT
function [x]=ourDCTi(X)

N=length(X);
k=0:(N-1);
n=0:(N-1);

Bk=ones(1,N);
Bk(1)=1/2;
x=1/N*(Bk.*X)*cos(pi/N*(n'+1/2)*k)';    