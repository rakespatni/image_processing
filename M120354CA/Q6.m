    
    clear all;
    image=imread('image.tif');
    buffr2=image;
    buffr1=image;
    [row,column,depth]=size(image);   
 
    [maxVal,maxInd] = max(image(:));
   
    col=0;
    val=1;
    while maxVal>0
        maxVal=maxVal/2-(mod(maxVal,2)/2);
        col=col+1;
    end
    maxVal=2^col-1;
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
    range=(2^col)/4;
    for i=1:row
        for j=1:column
            var=buffr1(i,j);
            if var < range && var >=0 
           var=0;
            elseif var >= range && var<(2*range)
                var=range;
            elseif var >= (2*range) && var<(3*range)
                var=(2*range);
            elseif var >= (3*range) && var<(4*range)
                var=(3*range);
           elseif var ==(4*range)
               var=(4*range);
            end
               buffr1(i,j)=var;
            
        end
                
    end
     range=(2^col)/8;
    for i=1:row
        for j=1:column
            var=buffr2(i,j);
            if var < range && var >=0 
           var=0;
            elseif var >= range && var<(2*range)
                var=range;
            elseif var >= (2*range) && var<(3*range)
                var=(2*range);
            elseif var >= (3*range) && var<(4*range)
                var=(3*range);
            elseif var >= (4*range) && var<(5*range)
                var=(4*range);
            elseif var >= (5*range) && var<(6*range)
                var=(5*range);
            elseif var >= (6*range) && var<(7*range)
                var=(6*range);
            elseif var >= (7*range) && var<(8*range)
                var=(7*range);
                
           elseif var ==(8*range)
               var=(8*range);
            end
               buffr2(i,j)=var;
            
        end
                
    end
    
    subplot(1,3,1), imshow(image); title('Original Image');
    subplot(1,3,2), imshow(buffr1); title('4 level Quantization');
    subplot(1,3,3), imshow(buffr2); title('8 level Quantization');
    
    
        
        
        
    
            
    
        