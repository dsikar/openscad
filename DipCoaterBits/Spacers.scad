module OptoStopBrace() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\STLImports\\OptoStopBraceBottomFlat.stl");	
}



module OptoEndStopGuide() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\STLImports\\OptoEndStopGuide.stl");	
}



//OptoStopBrace();
//OptoEndStopGuide();

translate([0, 0, 7.5])	  
rotate ([-90,0,0])
OptoEndStopBracketAndShaftSupportTop();

translate([41, 0, 0])	  
rotate ([90,0,180])
OptoEndStopBracketAndShaftSupportBottom();

module 3mmM3Spacers() {
	difference() {
		cylinder(h = 3, r=3, center = false, $fn = 100);
		cylinder(h = 3, r=1.5, center = false, $fn = 100);
	}
}



module OptoEndStopBracketAndShaftSupportTop() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\STLImports\\OptoEndStopBracketAndShaftSupportTop.stl");	
}

module OptoEndStopBracketAndShaftSupportBottom() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\STLImports\\OptoEndStopBracketAndShaftSupportBottom.stl");	
}

module 3mmM3Spacersx4() {

	// 1st
	translate([3, 3,0]) 
	3mmM3Spacers();
	// 2nd
	translate([10, 3,0]) 
	3mmM3Spacers();
	// 3rd
	translate([3, 10,0]) 
	3mmM3Spacers();
	// 4th
	translate([10, 10,0]) 
	3mmM3Spacers();
}


//3mmM3Spacersx4();

