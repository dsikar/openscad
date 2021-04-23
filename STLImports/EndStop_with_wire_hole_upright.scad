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

module endstop2() {
	difference() {
		union() {
			top();
			translate([9,0,0])
			bottom();
			// filler
			translate([7,0,0])
			cube([15, 4, 10], center = false, $fn = 100);
		}
		translate([8,-0.4,0])
		cube([13.2, 4.8, 7.24], center = false, $fn = 100);
	}
}

module endstop3() {
	translate([0,0,0])
	endstop2();

	translate([2.1,4,10])
	rotate([90,0,0])
	cylinder(h = 4, r = 2, $fn = 100);

	translate([26.1,4,10])
	rotate([90,0,0])
	cylinder(h = 4, r = 2, $fn = 100);

	translate([2,0,10])
	cube([24.1, 4, 2], center = false, $fn = 100);
}

module holder() {
	difference() {
		endstop3();
		union() {
			translate([28.1,-1,0])
			cube([27, 20, 10], center = false, $fn = 100);
			translate([24.1,7,0])
			cube([5, 5, 10], center = false, $fn = 100);
		}
	}
}

difference() {
	endstop();
	translate([0,-0.3,0])	
	#cube([8, 6, 10], center = false, $fn = 100);
}
rotate([0,90,0])
translate([-38,0,8])
holder();







// hole ref - edge to edge = centre point to centre point
//translate([4.9,-1,0])
//cube([19, 2.3, 5], center = false, $fn = 100);

