/*[ PROPRTTIES ]*/
height = 400; //z
width = 400; //x
depth = 400; //y

holesH = 3;
holesV = 3;

xcount = 2;
ycount = 2;

extrusionSize = 20;
panelThickness = 2;

showVolume = 0;
frame = 1;
panels = 1;
doors = 0;

opacity =.25;
opacity2 =.15;

// inner volume of the chamber
scale([showVolume, showVolume, showVolume]) {
    translate([-width/2, -depth/2, 0+extrusionSize]) 
		cube([width, depth, height]);
}

//make panels
if (panels == 1) {
	translate([
		-width/2-extrusionSize/2,
		-depth/2-extrusionSize/2,
		height+extrusionSize*2
		]) 
		color([.5,1,1,opacity2])
		cube([width+extrusionSize, depth+extrusionSize, panelThickness]);
	
	translate([
		-width/2-extrusionSize/2,
		-depth/2-extrusionSize/2+panelThickness,
		0+extrusionSize
		]) 
		color([.5,1,1,opacity2])
		cube([width+extrusionSize, depth+extrusionSize, panelThickness]);
	
	translate([
		-width/2-extrusionSize/2,
		depth/2+extrusionSize/2,
		0
		]) 
		color([.5,1,1,opacity2])
		cube([width+extrusionSize, panelThickness, height+extrusionSize*2]);
	
	translate([
		-width/2-extrusionSize/2-panelThickness,
		-depth/2-extrusionSize/2,
		0
		]) 
		color([.5,1,1,opacity2])
		cube([panelThickness, depth+extrusionSize, height+extrusionSize*2]);
	
	translate([
		width/2+extrusionSize/2,
		-depth/2-extrusionSize/2,
		0]) 
		color([.5,1,1,opacity2])
		cube([panelThickness, depth+extrusionSize, height+extrusionSize*2]);
	
	
	//doors
	if (doors==1) {
		translate([
			-width/2-extrusionSize/2,
			-depth/2-extrusionSize/2-panelThickness,
			0
			]) 
			color([.5,1,1,opacity2])
			cube([width/2+extrusionSize/2, panelThickness, height+extrusionSize*2]);
	
		translate([
			0,
			-depth/2-extrusionSize/2-panelThickness,
			0
			]) 
			color([.5,1,1,opacity2])
			cube([width/2+extrusionSize/2, panelThickness, height+extrusionSize*2]);
	}
}

//generate Base frame
if (frame == 1) {
	//vertical
	translate([ //back right
		width/2-extrusionSize/2, //x
		depth/2-extrusionSize/2, //y
		0+extrusionSize //z
		]) 
		color([0,0,1,opacity])
		cube([extrusionSize, extrusionSize, height]);

	translate([ //front right
		width/2-extrusionSize/2, //x
		-depth/2-extrusionSize/2, //y
		0+extrusionSize //z
		]) 
		color([0,0,1,opacity])
		cube([extrusionSize, extrusionSize, height]);
		
	translate([ //front left
		-width/2-extrusionSize/2, //x
		-depth/2-extrusionSize/2, //y
		0+extrusionSize //z
		]) 
		color([0,0,1,opacity])
		cube([extrusionSize, extrusionSize, height]);
	
	translate([ //back left
		-width/2-extrusionSize/2, //x 
		depth/2-extrusionSize/2,  //y
		0+extrusionSize //z
		]) 
		color([0,0,1,opacity])
		cube([extrusionSize, extrusionSize, height]);
	
	//bottom
	translate([ //right
		width/2-extrusionSize/2, 
		-depth/2-extrusionSize/2, 
		height+extrusionSize
		])
		color([0,1,1,opacity])
		cube([extrusionSize, depth+extrusionSize, extrusionSize]);
	
	translate([ //left
		-width/2-extrusionSize/2, 
		-depth/2-extrusionSize/2, 
		height+extrusionSize
		])
		color([0,1,1,opacity])
		cube([extrusionSize, depth+extrusionSize, extrusionSize]);
	
	translate([ //front
		-width/2-extrusionSize/2+extrusionSize, 
		-depth/2-extrusionSize/2, 
		height+extrusionSize
		])
		color([0,1,1,opacity])
		cube([width-extrusionSize, extrusionSize, extrusionSize]);
	
	translate([
		-width/2-extrusionSize/2+extrusionSize, 
		depth/2-extrusionSize/2, 
		height+extrusionSize
		])
		color([0,1,1,opacity])
		cube([width-extrusionSize, extrusionSize, extrusionSize]);
	
	//top
	translate([
		width/2-extrusionSize/2, 
		-depth/2-extrusionSize/2, 
		0
		])
		color([0,1,0,opacity])
		cube([extrusionSize, depth+extrusionSize, extrusionSize]);
	
	translate([
		-width/2-extrusionSize/2, 
		-depth/2-extrusionSize/2, 
		0
		])
		color([0,1,0,opacity])
		cube([extrusionSize, depth+extrusionSize, extrusionSize]);
	
	translate([
		-width/2-extrusionSize/2+extrusionSize, 
		-depth/2-extrusionSize/2, 
		0
		])
		color([0,1,0,opacity])
		cube([width-extrusionSize, extrusionSize, extrusionSize]);
	
	translate([
		-width/2-extrusionSize/2+extrusionSize, 
		depth/2-extrusionSize/2, 
		0
		])
		color([0,1,0,opacity])
		cube([width-extrusionSize, extrusionSize, extrusionSize]);
}	
//for (a=[0:xcount-1]) {
//	translate([-depth/2, -width/2, 0]) 
//		cube([depth, width, height]);
//}

