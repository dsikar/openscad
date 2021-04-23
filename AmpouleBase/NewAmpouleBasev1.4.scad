
// main shape

// v 1.1 change diameter 22,2 (11,1) for 22,7 (11,35)
//       change diameter 22,7 (11,35) for 23,2 (11,6)
// v 1.3 change diameter 24,3 (12,15) for 24,8 (12.4)
// v 1.4 bed with 24 (6 x 4)

/* 
1ST ROW
translate([13,13,0])
translate([39.8,13,0])
translate([66.6,13,0])
translate([93.4,13,0])
*/

// 1

translate([13,13,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 2 ~ ([13,13,0]), add the diameter to x (25.8),
// plus a 2 mm gap, 13 + 25.8+ 2 = 39.8

translate([39.8,13,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 3 ~ ([39.8,13,0]), add the diameter (25.8) to x,
// plus a 2 mm gap, 39.8 + 25.8+ 2 = 39.8

translate([66.6,13,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 4 ~ ([66.6,13,0]), add the diameter (25.8) to x,
// plus a 2 mm gap, 66.6 + 25.8+ 1 = 93.4

translate([93.4,13,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}


/*
2nd ROW
translate([13,39.8,0])
translate([39.8,39.8,0])
translate([66.6,39.8,0])
translate([93.4,39.8,0])
*/

// 5 ~ ([93.4,13,0]), add the diameter (25.8) to y,
// plus a 2 mm gap, 13 + 25.8+ 1 = 39.8

translate([13,39.8,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 6

translate([39.8,39.8,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 7

translate([66.6,39.8,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 8

translate([93.4,39.8,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

/*
3rd ROW
translate([13,66.6,0])
translate([39.8,66.6,0])
translate([66.6,66.6,0])
translate([93.4,66.6,0])
*/

// 9 

translate([13,66.6,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6

	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 10

translate([39.8,66.6,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 11

translate([66.6,66.6,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 12

translate([93.4,66.6,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

/*
4th ROW
translate([13,93.4,0])
translate([39.8,93.4,0])
translate([66.6,93.4,0])
translate([93.4,93.4,0])
*/

// 13 

translate([13,93.4,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6

	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 14

translate([39.8,93.4,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 15

translate([66.6,93.4,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 16

translate([93.4,93.4,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}


/*
5th ROW
17 translate([13,120.1,0])
18 translate([39.8,120.1,0])
19 translate([66.6,120.1,0])
20 translate([93.4,120.1,0])
*/

// 17

translate([13,120.1,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6

	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 18

translate([39.8,120.1,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 19

translate([66.6,120.1,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 20

translate([93.4,120.1,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

/*
6th ROW
21 translate([13,146.9,0])
22 translate([39.8,146.9,0])
23 translate([66.6,146.9,0])
24 translate([93.4,146.9,0])

*/

// 21

translate([13,146.9,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6

	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 22

translate([39.8,146.9,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 23

translate([66.6,146.9,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

// 24

translate([93.4,146.9,0])

difference() {

	union() {
		cylinder(h = 2.5, r= 12.9, $fn = 100); // d = 25.8
		translate([0, 0,2.5])
		cylinder(h = 5, r = 12.4, $fn = 100); // d = 24.3
	}
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7


	union() {
		// shape to be subtracted
		translate([0, 0,2.5])
		cylinder(h = 3.8, r = 11.6, $fn = 100); // d = 22.7
		
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3
		cylinder(h = 0.5, r1 = 11.6, r2 = 11.35, $fn = 100);
		translate([0, 0,6.3]) // 2.5 + 3.8 = 6.3		
		cylinder(h = 1.2, r = 11.35, $fn = 100);
		

		translate([0, 0,6.5])
		cylinder(h = 1, r = 11.6, $fn = 100);
		translate([0, 0,6])
		cylinder(h = 0.5, r1 = 11.35, r2 = 11.6, $fn = 100); // h = 2.5 + 2.8 + 0.5 + 0.2
	}

	// hole
	cylinder(h = 2.5, r = 2.1, $fn = 100);

	// 1st and 2ndgroove
	translate([-12.5, -0.5, 2.5])	// add 11.6
	cube([25, 1, 5]); //$fn = 100);

	// 3rd and 4th groove
	translate([-0.5, -12.5, 2.5])	// add 11.6
	cube([1, 25, 5]); //$fn = 100);

	// 5th and 6th groove
	rotate ([0,0,45])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

	// 7th and 8th groove
	rotate ([0,0,135])
	translate([-12.5, -0.5, 2.5])  // 7.32
	cube([25, 1, 5]); //$fn = 100);

}

