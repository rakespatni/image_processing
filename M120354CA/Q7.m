clear all;

image=imread('image.tif');
image = uint32(image);
[row,col,depth]=size(image); %getting the size and color depth  
sum = 0;
for i=1:row
	for j=1:col
		sum = sum+image(i,j);
	end
end
meanVal = sum/(row*col);
picture = ones(row,col);
for i=1:row
	for j=1:col
		if image(i,j)>meanVal
			picture(i,j)=1;
		else
			picture(i,j)=0;
		end
	end
end
imshow(picture);
