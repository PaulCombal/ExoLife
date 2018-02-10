//Fonction pour trouver les endroits pour atterir (Les endroits gris le plus clair)

function location=locate_gray(image, seuil)
    location = []
    index = 1
    [width, height]=size(image)
    for i=1:1:height
        for j=1:1:width
            pixel=image(j,i)
            if pixel >= seuil
                location(index,1)=j
                location(index,2)=i
                index = index+1
            end
        end
    end
endfunction
