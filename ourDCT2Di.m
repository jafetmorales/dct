% INVERSE DCT TRANSFORM IN TWO DIMENSIONS 
% USES OUR FUNCTION FOR INVERSE DCT-II IN ONE DIMENSION
function [img2]=ourDCT2Di(img2)

for col=1:size(img2,2)
    img2(:,col)=ourDCTi(img2(:,col)')';
end
figure(12);imshow(log(img2),[]);
title('log(img) after taking inverse DCT of cols');
for row=1:size(img2,1)
    img2(row,:)=ourDCTi(img2(row,:));
end
figure(13);imshow(img2,[]);
title('log(img) after taking inverse DCT of cols and then rows');
