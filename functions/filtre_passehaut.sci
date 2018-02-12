//Utilisation d'un filtre passe-haut
//Il permet d'accentuer les détails et le contraste

function picture=filtre_passehaut(image)
    
    [width, height] = size(image);
    
    picture = zeros(width, height);
    
    
    for x=1:height
        for y=1:width
            pixel = image(y, x);
            //Condition pour eviter que le balayement de la matrice depasse les bords de l'image
            if y-1 > 0 & y+1 < width & x-1 > 0 & x+1 < height then

                //Balaye les 9 pixels et on applique le filtre
                picture(y-1, x+1) = image(y-1,x+1)  
                picture(y-1, x) = image(y-1,x)-1  
                picture(y-1, x-1) = image(y-1,x-1) 
                picture(y, x+1) = image(y,x+1)-1 
                picture(y, x) = image(y,x)+5
                picture(y, x-1) = image(y,x-1)-1 
                picture(y+1, x+1) = image(y+1,x+1) 
                picture(y+1, x) = image(y+1,x)-1 
                picture(y+1, x-1) = image(y+1,x-1) 
               
            end
        end
    end
endfunction
