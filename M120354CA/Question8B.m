 
    clear all;
    a=imread('image.tif');
    b=a;
    [row,col,depth]=size(a);    %getting the size and color depth
    c=0;
    k=1;
    while c<=2 % c ranging from 0 to 2
        for i=1:row
            for j=1:col
            
                prod=c*a(i,j);
                a(i,j)=exp(double(prod));
            end
        end
      
       subplot(3,4,k), imshow(a);
        c=c+.2; % incremented c by 0.2 (the smaller the increment, the better can we notice the drastic change)
        k=k+1;
        a=b;
        
    end