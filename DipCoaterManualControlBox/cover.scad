// Cover

/*
LCD determines limits.

LCD size is 84.15 x 44mm

Is is shifted 21.31 sideways and 41.165 upwards - see DipCoaterManualControlElectronics.scad - clearing both edges.

Dimensions are 105.46 x 85.165mm.

Adding 2mm gap and 2.5mm wall, we add 9mm to both width and length.

w = 114.46, l = 94.165mm.

*/

module plate() {
	union() {
		// base shape
		// cube([114.46, 94.165, 2.5]);
		// cut in two pieces
		translate([0, 5, 0])
		cube([114.46, 84.165, 2.5]);

		translate([5, 0, 0])
		cube([104.46, 94.165, 2.5]);
		// add rounded edges
		// BL edge
		translate([5, 5, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// BR edge // shift x = 114.46 - 5, y = 5
		translate([109.46, 5, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// TL edge // shift x = 5, y = 94.165 - 5
		translate([5, 89.165, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	

		// TR edge // max shifts
		translate([109.46, 89.165, 0])
		cylinder(h = 2.5, r1 = 5, r2 = 5, $fn = 100);	
	}
}

module bl_corner() {
	translate([5, 5, 0])
	difference(){
		cylinder(h = 20.7, r1 = 5, r2 = 5, $fn = 100);	
		cylinder(h = 20.7, r1 = 2.5, r2 = 2.5, $fn = 100);
		translate([-5, 0, 0])
		cube([10, 5, 20.7]);
		translate([0, -5, 0])
		cube([5, 5, 20.7]);
	}
}

module br_corner() {
	translate([109.46, 5, 0])
	difference(){
		cylinder(h = 20.7, r1 = 5, r2 = 5, $fn = 100);	
		cylinder(h = 20.7, r1 = 2.5, r2 = 2.5, $fn = 100);
		translate([-5, 0, 0])
		cube([10, 5, 20.7]);
		translate([-5, -5, 0])
		cube([5, 5, 20.7]);
	}
}

module tl_corner() {
	translate([5, 89.165, 0])
	difference(){
		cylinder(h = 20.7, r1 = 5, r2 = 5, $fn = 100);	
		cylinder(h = 20.7, r1 = 2.5, r2 = 2.5, $fn = 100);
		translate([-5, -5, 0])
		cube([10, 5, 20.7]);
		//translate([0, 0, 0])
		cube([5, 5, 20.7]);
	}
}

module tr_corner() {
	translate([109.46, 89.165, 0])
	difference(){
		cylinder(h = 20.7, r1 = 5, r2 = 5, $fn = 100);	
		cylinder(h = 20.7, r1 = 2.5, r2 = 2.5, $fn = 100);
		translate([-5, -5, 0])
		cube([10, 5, 20.7]);
		translate([-5, 0, 0])
		cube([5, 5, 20.7]);
	}
}

module north_stopper() {
	difference() {
		cube([2.5, 2.5, 7.5]);
		rotate([-18.44, 0, 0])
		translate([0, -2.50, 0])
		cube([2.5, 2.5, 7.91]);
	}
}

module south_stopper() {
	difference() {
		translate([0, -2.50, 0])
		cube([2.5, 2.5, 7.5]);
		rotate([18.44, 0, 0])
		cube([2.5, 2.5, 7.91]);
	}
}

// Stop bottom plate from "seesawing"
module stoppers() {
	translate([103.46, 5, 2.5])
	south_stopper();
	translate([8, 89.165, 2.5])
	north_stopper();
}

// box cover
module cover() {
	union() {		
		translate([0, 0, 20.7])
			plate();
			/* // comment in to show electronics
			// controls
			translate([4.5, 4.5, 12.5])
			import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\DipCoaterManualControlElectronics.stl");
			*/
			// west wall
			difference() {
				translate([0, 5, 0])
				cube([2.5, 84.65, 20.7]);

			// west wall hole
			translate([0, 46.1, 7.5])
			rotate([0, 90, 0])
			union() {
				cylinder(h = 2.5, r1 = 3.7, r2 = 1.85, $fn = 100);
				translate([0, 0, -0.25])
				cylinder(h = 0.25, r1 = 3.7, r2 = 3.7, $fn = 100);
				translate([0, 0, 2.5])
				cylinder(h = 0.25, r1 = 1.85, r2 = 1.85, $fn = 100);
			}
		}

		// east wall
		difference() {
			translate([111.96, 5, 0])
			cube([2.5, 84.65, 20.7]);

			translate([114.46, 46.1, 7.5])
			//translate([101.46, 41.1, 2.5])
			rotate([0, -90, 0])
			union() {
				cylinder(h = 2.5, r1 = 3.7, r2 = 1.85, $fn = 100);
				translate([0, 0, -0.25])
				cylinder(h = 0.25, r1 = 3.7, r2 = 3.7, $fn = 100);
				translate([0, 0, 2.5])
				cylinder(h = 0.25, r1 = 1.85, r2 = 1.85, $fn = 100);
			}
		}

		// south wall
		translate([5, 0, 0])
		cube([104.46, 2.5, 20.7]);

		// north wall
		translate([5, 91.665, 0])
		cube([104.46, 2.5, 20.7]);

		// rounded corners
		bl_corner();
		br_corner();		
		tl_corner();
		tr_corner();

		// stoppers
		stoppers();
	}
}

/************************************

	Labels; power, up, down, plus and minus

************************************/

module power() {
	union() {
		difference() {
			cylinder(h = 2, r1 = 3, r2 = 3, $fn = 100);
			cylinder(h = 2, r1 = 2, r2 = 2, $fn = 100);
		}
		cylinder(h = 2, r1 = 1, r2 = 1, $fn = 100);
	}
}

module faster() {
	// plus (faster)
	translate([-0.5,-3,0]) 
	cube([1, 6, 2]);
	translate([-3,-0.5,0]) 
	cube([6, 1, 2]);
}

module slower() {
	// minus (slower)
	translate([-3,-0.5,0])
	cube([6, 1, 2]);
}

module down_arrow() {
	translate([0,-3,0])
	union() {
		difference() {
			union() {
				// arrow shaft
				translate([-0.5,0.71,0]) 
				cube([1, 5.29, 2]);

				// 1/2 arrow head
				rotate([0,0,45])
				cube([1, 2.83, 2]);

				// other 1/2 arrow head
				translate([-0.71,0.71,0])
				rotate([0,0,-45])
				cube([1, 2.83, 2]);
			}

			// arrow head right blinker
			translate([0.59,2,0])
			cube([1.41, 0.71, 2]);

			// arrow head left blinker
			translate([-2,2,0])
			cube([1.41, 0.71, 2]);
		}
	}
}

module up_arrow() {
	rotate([0,0,180])
	down_arrow();
}

module labels() {
	// power
	power();
	// up arrow
	translate([15.1,0,0]) 
	up_arrow();
	// down arrow
	translate([30.56,0,0]) 
	down_arrow();
	// plus (faster)
	translate([61.21,0,0]) 
	faster();
	// minus (slower)
	translate([45.72,0,0]) 
	slower();
}

module dip_coater_fonts() {
	// level with z plane
	translate([0, 0, 2])
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\DipCoaterFont_fixed.stl");
	// measure for comparison - width is the x axys
	//cube([46.1,2,2]);
}

module manual_control_fonts() {
	translate([33.55, 31.17, 22.2])
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\ControleManualFont_fixed.stl");
	// measure for comparison - width is the x axys
	//cube([46.1,2,2]);
}

module final_rendering() {
	difference() {
		// main box
		cover();

		// controls
		translate([4.5, 4.5, 12.5])
		import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\DipCoaterManualControlElectronics.stl");

		// labels
		translate([36.90, 12.17, 22.2])
		labels();

		// dip coater embossed
		translate([43.9, 42.17, 22.2])
		dip_coater_fonts();

		// manual control embossed
		manual_control_fonts();

	}
}

module print_ready_rendering() {
	translate([94.165, 114.46, 23.2])
	rotate([0,180,90])
	final_rendering();
}

print_ready_rendering();


	



