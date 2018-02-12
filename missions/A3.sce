getd("functions\");

image = readpbm("images\A3.pbm");

newImage = seuillage_image(image,200);

display_gray(newImage);

writepbm(newImage,"results/A3.pbm");
