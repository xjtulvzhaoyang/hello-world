function x_rec= changePicture( x1 ,U,mu,sigma,k)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%load('features.mat');
copy=(reshape(x1,32,32));
x1=double(x1);
x1=(x1-mu)./sigma;
z= projectData(x1, U, k);
x_rec = recoverData(z, U, k);
x_rec=x_rec.*sigma+mu;
temp=reshape(x_rec,32,32);
temp=uint8(temp);
subplot(1,2,1);
imshow(copy);
subplot(1,2,2);
imshow(temp);

end

