getd("functions/");

img = readpbm("images/B3.pbm");

yellow_part     = thresholdAdvanced(img,  63, 0,  63);
red_part        = thresholdAdvanced(img, 126, 0, 126);
blue_part       = thresholdAdvanced(img, 189, 0, 189);
green_part      = thresholdAdvanced(img, 255, 0, 255);

img = yellow_part;
img = addition(img, red_part);
img = addition(img, blue_part);
img = addition(img, green_part);

writepbm(img, "images/result/B3.pbm");
