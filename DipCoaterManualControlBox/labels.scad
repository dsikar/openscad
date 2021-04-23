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
	translate([45.72,0,0]) 
	faster();
	// minus (slower)
	translate([61.21,0,0]) 
	slower();
}

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



module button() {
	cylinder(h = 17.15, r1 = 3, r2 = 3, $fn = 100);	
}

module buttons() {
	// 1st button
	translate([32.40, 16.67, 1.25])
	button();
	// 2nd button
	translate([47.50, 16.67, 1.25])
	button();
	// 3rd button
	translate([62.96, 16.67, 1.25])
	button();
	// 4th button
	translate([78.12, 16.67, 1.25])
	button();
	// 5th button
	translate([93.61, 16.67, 1.25])
	button();
}

module dip_coater_fonts() {
	// level with z plane
	translate([0, 0, 2])
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\DipCoaterFont.stl");
	// measure for comparison - width is the x axys
	//cube([46.1,2,2]);
}

module manual_control_fonts() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\ControleManualFont.stl");
	// measure for comparison - width is the x axys
	//cube([46.1,2,2]);
}


module render() {
	difference() {
		translate([0, 0, 20.7])
		plate();

		translate([4.5, 4.5, 12.5])
		buttons();

		translate([36.90, 12.17, 22.2])
		labels();

		translate([43.9, 45.17, 22.2])
		dip_coater_fonts();

		translate([33.55, 32.67, 22.2])
		manual_control_fonts();
	}
}

//render();

		import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\cover.stl");


