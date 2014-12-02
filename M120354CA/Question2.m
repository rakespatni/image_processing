clc;
clear all;
I=ones(32,32); %size of white image
val = 0;
for i = 1:32
    for j = 1:32
        val = abs(sin(sqrt((i*i) + (j*j))));
        I(i,j) = val; 
    end
end

imshow(I);