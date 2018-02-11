//img : The input image
//threshold : The threshold value
//color_under : The color to put if the pixel value is under the threshold
//color_above : The color to put if the pixel value is above the threshold
function out=thresholdAdvanced(img, threshold, color_under, color_above)
    [x, y]=size(img);
    out=zeros(x, y);

    for i=1:x
        for j=1:y
            pix = img(i, j);

            if pix < threshold then
                out(i, j) = color_under;
            else
                out(i, j) = color_above;
            end
        end
    end
endfunction
