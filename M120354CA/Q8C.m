 
clear all;
image=imread('image.tif');
buffr=image;
[row,col,depth]=size(image);    
gamma=0;
ind=1;
while gamma<=3 
	for i=1:row
		for j=1:col
		   image(i,j)=double(image(i,j))^gamma;
		end
	end
  
   subplot(3,5,ind), imshow(image);
	gamma=gamma+.2; % raising gamma by 0.2
	ind=ind+1;
	image=buffr;
	
end