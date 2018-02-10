function out=histogramNorm(histo, num_pixels)
    for i=1:256
        out(i)=histo(i) / num_pixels;
    end
endfunction
