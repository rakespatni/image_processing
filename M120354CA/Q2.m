clc;
clear all;
image=ones(32,32); %size of image(white)
val = 0;
for i = 1:32
    for j = 1:32
        val = abs(sin(sqrt((i*i) + (j*j))));
        image(i,j) = val; 
    end
end

imshow(image);