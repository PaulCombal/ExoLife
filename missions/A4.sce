getd("functions\");

image1 = readpbm("images\A4-1.pbm");
image2 = readpbm("images\A4-2.pbm");

imageBruit = soustraction_image(image1, image2);

imageFiltre = soustraction_image(image1, imageBruit);

imageFinal = filtre_median(imageFiltre, 20);

writepbm(imageFinal, "results\A4.pbm");

