% DCT TRANSFORM IN TWO DIMENSIONS 
% USES OUR FUNCTION FOR DCT IN ONE DIMENSION
function [img2]=ourDCT2D(img)

for row=1:size(img,1)
    img2(row,:)=ourDCT(img(row,:));
end
figure(10);imshow(log(img2),[]);
title('log(img) after taking DCT of rows');
for col=1:size(img,2)
    img2(:,col)=ourDCT(img2(:,col)')';
end
figure(11);imshow(log(img2),[]);
title('log(img) after taking DCT of rows and then cols');
