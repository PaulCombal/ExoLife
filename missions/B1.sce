// Mission B1
// Appliquer une égalisation sur l'image

getd("functions/");

img=readpbm("images/B1.pbm");
img=egalisation(img);

writepbm(img, "results/B1.pbm");

display_gray(img);
