    
    clear all;
    a=ones(32,32); %white image
    v=0;
    for i=1:32
        for j=1:32
            v=abs(sin(sqrt(i*i+j*j)));
            if v < 0.25 && v >=0 
           v=0;
            elseif v >= 0.25 && v<0.5
                v=0.25;
            elseif v >= 0.5 && v<0.75
                v=0.5;
            elseif v >= 0.75 && v<1
                v=0.75;
           elseif v ==1
               v=1;
            end
               a(i,j)=v; 
        end
    end
    
    imshow(a);


        