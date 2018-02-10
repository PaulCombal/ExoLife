function out=egalisation(img)
    out=histogram(img);
    
    [x,y]=size(img);
    num_pixels = x * y;

    temp_img = histogramNorm(out, num_pixels);
    temp_img = histogramDensity(temp_img);

    out = zeros(x, y);

    for i=1:x
        for j=1:y
            out(i, j) = temp_img((img(i,j)+1))*255
        end
    end
endfunction
