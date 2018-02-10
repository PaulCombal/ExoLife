function out=normalisation(img)
    [x, y] = size(img);
    out = zeros(x, y);
    
    lowest_gray = min(img);
    highest_gray = max(img);

    for i=1:x
        for j=1:y
            current_gray = img(i, j);
            current_gray = current_gray - lowest_gray;
            current_gray = round((current_gray * 255) / (highest_gray - lowest_gray));
            
            out(i,j) = current_gray;
        end            
    end
endfunction
