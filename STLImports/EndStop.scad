/*
Opto End Stops for 3D printer
*/

//rotate([90,0,0])
// translate([20,-27,0])
//projection(cut=false) 
module endstop() {
	translate([19,-27.45,0])
	import("C:\\Users\\Intel\\Downloads\\Vision_Endstop_Holder.stl");
}

// 1st half

module top() {
	difference() {
		endstop();
		translate([9.5,-1,0])
		cube([40, 20, 12], center = false, $fn = 100);
	}
}

module bottom() {
	difference() {
		endstop();
		translate([-9.5,-1,0])
		cube([20, 11, 12], center = false, $fn = 100);
	}
}

top();
translate([9,0,0])
bottom();
// filler
translate([7,0,0])
cube([15, 4, 10], center = false, $fn = 100);







// hole ref - edge to edge = centre point to centre point
//translate([4.9,-1,0])
//cube([19, 2.3, 5], center = false, $fn = 100);

//rotate([180,0,0])
//translate([0,-23,-4])
//import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\FlatBarLocktop.stl");

//projection(cut=false) import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\TopBendingJig.stl");

/*
rotate([0,0,90])
translate([-1,-43,0])
dxf_linear_extrude(file="C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\TopBendingJig.dxf", height=2);
*/