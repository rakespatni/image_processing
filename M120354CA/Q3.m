    
clear all;
image=ones(32,32); %white image
val=0;
for i=1:32
	for j=1:32
		val=abs(sin(sqrt(i*i+j*j)));
		if val < 0.25 && val >=0 
	        val=0;
		elseif val >= 0.25 && val<0.5
			val=0.25;
		elseif val >= 0.5 && val<0.75
			val=0.5;
		elseif val >= 0.75 && val<1
			val=0.75;
	   elseif val ==1
		   val=1;
		end
		   image(i,j)=val; 
	end
end

imshow(image);


	