function out=histogramDensity(norm_hist)
    out(1)=norm_hist(1);
    
    for i=2:256
        out(i)=norm_hist(i)+out(i-1);
    end
endfunction
