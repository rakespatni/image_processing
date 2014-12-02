 
    clear all;
    a=imread('image.tif');
    b=a;
    [row,col,depth]=size(a);    %getting the size and color depth
    c=0;
    k=1;
    while c<=3 % c ranges from 0 to 3
        for i=1:row
            for j=1:col
               a(i,j)=double(a(i,j))^c;
            end
        end
      
       subplot(3,5,k), imshow(a);
        c=c+.2; % c increased by 0.2
        k=k+1;
        a=b;
        
    end