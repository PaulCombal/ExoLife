getd("functions\");

image = readpbm("images\X2-2.pbm");

imageMedian = filtre_median(image,25);

imageFinal = filtre_passehaut(imageMedian);

writepbm("results\X2.pbm");

