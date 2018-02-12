//Utilisation d'une matrice de convolution
//Le pixel au centre de la matrice de convolution prend la valeur
//du pixel de valeur médian dans toute la matrice de convolution

function picture=filtre_median(image, tolerance)
    
    [width, height] = size(image);
    
    picture = zeros(width, height);
    
    
    for i=1:height
        for j=1:width
            pixel = image(j, i);
            //Condition pour eviter que le balayement de la matrice depasse les bords de l'image
            if j-1 > 0 & j+1 < width & i-1 > 0 & i+1 < height then
                //Matrice de valeurs
                values = [];
               
                //Balaye les 9 pixels ou se trouve la matrice et les mets dans la matrice Values
                for y=1:3
                    for x=1:3
                        values(length(values)+1) = image(j + (x - 2), i + (y - 2));
                    end
                end
                
                //Tri des valeurs que la matrice values contient
                // g -> toute la matrice
                // i -> dans l'ordre croissant
                values = gsort(values,"g","i")
                
                //On recupere la valeur mediane de la matrice values 
                medianValues = values(round(length(values) / 2));
  
                
                //Si la valeur du pixel est trop differente de notre valeur médiane alors on la remplace par cette derniere sinon on garde le pixel de l'image
                if image(j, i) > (medianValues + tolerance) | image(j, i) < (medianValues - tolerance) then
                    picture(j, i) = medianValues;
                else
                    picture(j, i) = image(j, i);
                end
            end
        end
    end
endfunction
