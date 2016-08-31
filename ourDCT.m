% FORWARD DCT
function [X]=ourDCT(x)

N=length(x);
k=0:(N-1);
n=0:(N-1);

X=2*double(x)*cos(pi/N*(n'+1/2)*k);