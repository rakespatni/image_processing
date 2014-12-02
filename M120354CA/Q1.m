clc;
image=zeros(64, 64); %image size
val = 0;
counter1 = 1;
counter2 = 1;
for i = 1:64
    for j = 1:64
        image(i,j) = val; %intensity value of the pixel
        if mod(counter1, 8)== 0 %end of a row
            val = 1-val; %switching value
        end
        counter1 = counter1+1;
    end
    if mod(counter2, 8) == 0 %end of a column
        val = 1 - val;
    end
    counter2 = counter2+1;
end

imshow(image);
    