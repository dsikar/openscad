// 1.6 Single, entire part now 12.9 outside diameter

translate([13,13,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.9, $fn = 100); // d = 25.8
	}

	translate([0, 0,4.5])
	cylinder(h = 2, r = 11.35, $fn = 100); // d = 22.7	

	// base cylinder
	translate([0, 0,2.5])
	cylinder(h = 2, r = 11.6, $fn = 100); // d = 23.2

	// in cut
	translate([0, 0,4.5]) //2.5 + 2 = 4.5
	cylinder(h = 0.144338, r1 = 11.6, r2 = 11.35, $fn = 100);

	// mid cylinder
	translate([0, 0, 4.644338]) // 2.5 + 2 + 0.144338 = 4.644338		
	cylinder(h = 1.711324, r = 11.35, $fn = 100);

	// out cut
	translate([0, 0,6.355662])  // 2.5 + 2 + 0.144338 + 1.711324 = 6.355662
	cylinder(h = 0.144338, r1 = 11.35, r2 = 11.6, $fn = 100); 

	// top cylinder
	translate([0, 0,6.5]) // 2.5 + 2 + 0.144338 + 1.711324 + 0.144338 = 6.5
	cylinder(h = 1, r = 11.6, $fn = 100);

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-13, -0.5, 2.5])	// add 11.6
	#cube([26, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -13, 2.5])	// add 11.6
	cube([1, 26, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-13, -0.5, 2.5])  // 7.32
	cube([26, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-13, -0.5, 2.5])  // 7.32
	cube([26, 1, 5]); //$fn = 100);

}