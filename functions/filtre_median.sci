function picture=filtre_median(image,tolerance)
    
    [width,height]=size(image)
    
    picture = zeros(width,height);
    
    for i=1:height
        for j=1:width
            pixel = image(j,i)
            //Condition pour eviter que le balayement du filtre depasse les bords de l'image
            if j-1 > 0 & j+1 < width & i-1 > 0 & i+1 < height then
                values = []
                ncx = 2
                ncy = 2
                for y=1:3
                    for x=1:3
                        values(length(values)+1) = image(j+(x-ncx),i+(y-ncy));
                        disp("values"+ values)
                        
                        disp("length values" + length(values)+1)
                        
                        
                    end
                end
                values = gsort(values,"g","i")
                disp("gsort(values,g,i)"+ values)
                avg = 0
                for a=1:length(values)
                    avg = avg + values(a)
                    disp("avg" + avg)
                end
                avg = avg / length(values)
         
                if image(j,i) > avg+tolerance | image(j,i) < (avg-tolerance) then
                    picture(j,i) = values(round(length(values)/2))
                    disp(values(round(length(values)/2)))
                else
                    picture(j,i) = image(j,i)
                end
            end
        end
    end
endfunction
