function out=egalisation(img)
    
    [x,y]=size(img);
    num_pixels = x * y;

    tmp_hist = histogram(img);
    tmp_hist = histogramNorm(tmp_hist, num_pixels);
    tmp_hist = histogramDensity(tmp_hist);

    out = zeros(x, y);

    for i=1:x
        for j=1:y
            out(i, j) = tmp_hist((img(i,j)+1))*255
        end
    end
endfunction
