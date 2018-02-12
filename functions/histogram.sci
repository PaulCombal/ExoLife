function histo=histogram(imgsrc)
    for i=0:1:255 
        [x, y] = find(imgsrc == i);
        histo(i + 1) = length(x);
    end
endfunction
