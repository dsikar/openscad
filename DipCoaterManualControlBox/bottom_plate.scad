/* sanity check on matching holes */

module no_offset_hole() {
	// height is arbitrarily set to 5mm
	cylinder(h = 5, r1 = 1.6, r2 = 1.6, $fn = 100);	
}

module offset_hole() {
	// height is the arbitrary 5mm plus the LCD offset (3.71)
	cylinder(h = 8.71, r1 = 1.325, r2 = 1.325, $fn = 100);
}

module bottom_plate() {
	union() {
		// base shape
		/*
		From the base plate, remove 2.5mm on each edge plus 0.5mm to leave a gap between base plate and box walls.
		That means 6mm from the total width and the same from the total length.
		Original dimensions (ignoring rounded edges) 114.46, 94.165, 2.5
		New dimensions (ignoring rounded edges) 108.46, 88.165, 2.5

		*/
		// cube([114.46, 94.165, 2.5]);
		// cut in two pieces
		//translate([0, 5, 0]) // 5 along y axis plus 3mm
		translate([3, 8, 0])
		//cube([114.46, 84.165, 2.5]);
		cube([108.46, 78.165, 2.5]);

		translate([8, 3, 0])  // 5 along x axis plus 3mm
		cube([98.46, 88.165, 2.5]);

		// add rounded edges
		// BL edge
		translate([8, 8, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// BR edge // shift x = 108.46 - 5, y = 5
		translate([106.46, 8, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// TL edge // shift x = 5, y = 88.165 - 5
		translate([8, 86.165, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// TR edge // max shifts
		translate([106.46, 86.165, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	
	}
}

module offset_hole(my_height, outside_diam, inside_diam) {
	// height is arbitrarily set to 5mm
	difference() {
		cylinder(h = my_height, r1 = outside_diam, r2 = outside_diam, $fn = 100);	
		cylinder(h = my_height, r1 = inside_diam, r2 = inside_diam, $fn = 100);	
	}
}

module props() {
	// 1st hole
	translate([5.74, 5.57, 2.5])
	offset_hole(10, 3.25, 1.6);
	// 2nd hole
	translate([4.90, 53.8, 2.5])
	offset_hole(10, 3.25, 1.6);
	// 3rd hole
	translate([95.45, 4.96, 2.5])
	offset_hole(10, 3.25, 1.6);
	// 4th hole
	translate([104.265, 82.66, 2.5])
	offset_hole(13.71, 3.25, 1.6);
}

module side_holder() {
	difference() {
		union() {
			cube([10, 10, 5]);
			translate([0, 5, 5])
			rotate([0, 90, 0])
			cylinder(h = 10, r1 = 5, r2 = 5, $fn = 100);
		}
		translate([-0.5, 5, 5])
		rotate([0, 90, 0])
		cylinder(h = 11, r1 = 1.6, r2 = 1.6, $fn = 100);
	}
}

module inner_side_holes() {
	// 1st hole
	translate([3, 41.1, 2.5])
	side_holder();
	// 2nd hole
	translate([101.46, 41.1, 2.5])
	side_holder();
}

module sanity_check() {
	color("Pink")
	translate([2.85, 2.85, 0])
	props();	
}

module www() {
	rotate([0,180,0])
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\www.construmaq.ind.brFont_fixed.stl");
	// reference
	// cube([96.5,2,2]); // width = 96.5
}

module flag() {
	// 36 x 29mm
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\BrazilianFlag_fixed.stl");
}

module final_renderisation() {
	difference() {
		union() {
			// props
			translate([2.85, 2.85, 0])
			props();
			// bottom plate
			bottom_plate();
			// inner_side_holes();
			inner_side_holes();	
		}
	translate([105.28, 22.13, 1]) // sketchup 8 generated font with font face at z = 0, font back at z = -2, hence, z = 1 means font protruding 1mm from bottom, for incised font though OpenSCAD difference() funtion.
	www();
	translate([39.23, 43.28, -1])
	//color("Green")
	flag();
	}
}

// position print object
module print_ready_renderisation() {
	translate([91.165, -3, 0])
	rotate([0,0,90])
	final_renderisation();
}

print_ready_renderisation();
