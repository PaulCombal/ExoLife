//Fonction permettant de calculer le pourcentage de teinte de gris dans une image

function averagePourcentage=average_picture(image)
    [width, height]=size(image)
    sumPixel = 0
    for i=1:1:height
        for j=1:1:width
            pixel=image(j,i)
            sumPixel = sumPixel + pixel  
        end
    end
    averagePixel = sumPixel/(width*height)
    averagePourcentage=(averagePixel/255)*100
endfunction
