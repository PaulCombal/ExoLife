// Mission B2
// Appliquer une normalisation sur l'image

getd('functions/');

img=readpbm("images/B2.pbm");
img=normalisation(img);

display_gray(img);

writepbm(img, "images/result/B2.pbm");
