 
    clear all;
    a=imread('image.tif');
    a = uint32(a);
    [row,col,depth]=size(a); %getting the size and color depth  
    sum = 0;
    for i=1:row
        for j=1:col
            sum = sum+a(i,j);
        end
    end
    meanVal = sum/(row*col);
    b = ones(row,col);
    for i=1:row
        for j=1:col
            if a(i,j)>meanVal
                b(i,j)=1;
            else
                b(i,j)=0;
            end
        end
    end
    imshow(b);
