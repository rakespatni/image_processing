clc;

I=zeros(64, 64); %size
val = 0;
c1 = 1;
c2 = 1;
for i = 1:64
    for j = 1:64
        I(i,j) = val; %intensity value of the pixel
        if mod(c1, 8)== 0 %end of a row
            val = 1-val; %switching value
        end
        c1 = c1+1;
    end
    if mod(c2, 8) == 0 %end of a column
        val = 1 - val;
    end
    c2 = c2+1;
end

imshow(I);
    