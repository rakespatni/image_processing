    
    clear all;
    image=imread('image.tif');
    [row,column,depth]=size(image);   
    col=0;
    [maxVal,maxInd] = max(image(:));
   
    while maxVal>0 % getting the power of 2
        maxVal=maxVal/2-(mod(maxVal,2)/2);
        col=col+1;
    end
    maxVal=2^col-1; % maxVal can reach (2^8 - 1)=255
    intensity=0.25*maxVal;
    for i=1:row
        for j=1:column
            sum=image(i,j)+intensity;
            if sum>maxVal
                image(i,j)=maxVal;
            else
                image(i,j)=sum;
            end
        end
    end
    imshow(image);
    
    
        
        
        
    
            
    
        