//run("Threshold...");
run("8-bit");
setAutoThreshold("Default dark");
//run("Threshold...");
//setThreshold(129, 255);
setThreshold(16, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "clear add");

nROIs = roiManager("count");

for(i = 0; i<nROIs; i++){
	roiManager("Select", i);
	setColor(i+1);
	fill();
}

name=getTitle;
selectWindow(name);
roiManager("Show None");

saveAs("PNG", "/home/joachim/Documents/repos/hac_cell_segmentation/HacTraining/PedMasks/"+name);
close();