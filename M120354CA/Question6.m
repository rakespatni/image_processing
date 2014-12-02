    
    clear all;
    a=imread('image.tif');
    a2=a;
    a1=a;
    [row,col,depth]=size(a);    %getting the size and color depth
    
    [maxVal,maxInd] = max(a(:));
    max=maxVal;
    c=0;
    p=1;
    while max>0
        max=max/2-(mod(max,2)/2);
        c=c+1;
    end
    max=2^c-1;
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
    range=(2^c)/4;
    for i=1:row
        for j=1:col
            var=a1(i,j);
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
               a1(i,j)=var;
            
        end
                
    end
     range=(2^c)/8;
    for i=1:row
        for j=1:col
            var=a2(i,j);
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
               a2(i,j)=var;
            
        end
                
    end
    
    subplot(1,3,1), imshow(a); title('Original Image');
    subplot(1,3,2), imshow(a1); title('4 level Quantization. Less details, with more dark contrast');
    subplot(1,3,3), imshow(a2); title('8 level Quantization. More details with not so dark contrast');
    
    
        
        
        
    
            
    
        