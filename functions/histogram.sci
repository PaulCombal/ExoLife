function histo=histogram(imgsrc)
    
    intensite=[];
    
    for i=0:1:255 
        [x,y]=find(imgsrc==i);
        intensite(i+1)=length(x);
    end

    histo=intensite
    //plot(nbpixel,intensite)
endfunction
