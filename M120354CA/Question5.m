    
    clear all;
    a=imread('image.tif');
    [row,col,depth]=size(a);    %getting the size and the color depth
    r=1;
    c=0;
    d=1;
    [maxVal,maxInd] = max(a(:));
    max=maxVal;
    c=0;
    p=1;
    while max>0 % getting the power of 2
        max=max/2-(mod(max,2)/2);
        c=c+1;
    end
    max=2^c-1; % max can be 255, ie, 2^8 - 1
    intensity=0.25*max;
    for i=1:row
        for j=1:col
            sum=a(i,j)+intensity;
            if sum>max
                a(i,j)=max;
            else
                a(i,j)=sum;
            end
        end
    end
    imshow(a);
    
    
        
        
        
    
            
    
        