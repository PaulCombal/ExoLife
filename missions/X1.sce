//Mission X1
//Transformée de fourier

getd("functions/");

load("images/X1.sod");

imgT = ifft(imgT);

writepbm(imgT, "results/X1.pbm");
