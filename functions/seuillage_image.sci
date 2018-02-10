//Fonction pour mettre en valeur les pixels au dessus d'un seuil

function picture=seuillage_image(image, seuil)
    
    [width, height]=size(image)
    //Defini une matrice picture de même dimension que l'image ne contenant que des zeros//
    picture = zeros(width,height)
    
    for i=1:1:height
        for j=1:1:width
            pixel=image(j,i);
            if pixel < seuil then
                picture(j,i)=0
            else
                picture(j,i)=255
            end
        end
    end
endfunction
