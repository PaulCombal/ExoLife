function picture=soustraction_image(image1,image2)
    [width,height]=size(image1);
    
    picture=zeros(width,height);
    
    for i=1:1:height
        for j=1:1:width    
            pixel1 = image1(j,i);
            pixel2 = image2(j,i);
            picture(j,i) = max(pixel1 - pixel2,0)
        end    
    end
endfunction
