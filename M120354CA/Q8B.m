
clear all;
image=imread('image.tif');
buffr=image;
[row,col,depth]=size(image);    
sigma=0;
ind=1;
while sigma<=2 
	for i=1:row
		for j=1:col
		
			power=sigma*image(i,j);
			image(i,j)=exp(double(power));
		end
	end
  
   subplot(3,4,ind), imshow(image);
	sigma=sigma+.2; % raising sigma by 0.2
	ind=ind+1;
	image=buffr;
	
end