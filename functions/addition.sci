function out=addition(img1, img2)
    // We assume both images have the same dimensions
    [x, y] = size(img1);
    out = zeros(x, y);

    for i=1:x
        for j=1:y
            pix1 = img1(i, j);
            pix2 = img2(i, j);
            out(i, j) = min(255, pix1 + pix2);
        end
    end
endfunction
