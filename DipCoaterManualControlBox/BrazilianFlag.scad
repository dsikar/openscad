/*****************************

		Brazilian flag

*****************************/


// flag 36mm x 29mm

module sides() {
	// left side 29 - 2 * 2
	translate([0,2,0])
	cube([1, 25, 2]);
	// right side
	translate([35,2,0])
	cube([1, 25, 2]);
	// bottom 36 - 2 * 2
	translate([2,0,0])
	cube([32, 1, 2]);
	// top
	translate([2,28,0])
	cube([32, 1, 2]);
}

// corner
module corner() {
	difference() {
		cylinder(h = 2, r1 = 2, r2 = 2, $fn = 100);
		cylinder(h = 2, r1 = 1, r2 = 1, $fn = 100);
		translate([-2,0,0])
		cube([2,2,2]);
		translate([0,-2,0])
		cube([2,4,2]);
	}
}

module bl_corner() {
	corner();
}

module tl_corner() {
	rotate([0,0,-90])
	corner();
}

module br_corner() {
	rotate([0,0,90])
	corner();
}

module tr_corner() {
	rotate([0,0,180])
	corner();
}

module corners() {
	translate([2,2,0])
	bl_corner();

	translate([2,27,0])
	tl_corner();

	translate([34,2,0])
	br_corner();

	translate([34,27,0])
	tr_corner();
}

module rhombus_side() {
	cube([18,1,2]);
}

module bottom_half() {
	rotate([0,0,38])
	rhombus_side();
	translate([0.62,0.79,0])
	rotate([0,0,142])
	rhombus_side();
}

module top_half() {
	translate([0,22.42,2])
	rotate([180,0,0])
	bottom_half();
}

module rhombus() {
	top_half();
	bottom_half();
}

module circle() {
	translate([0,11.3,0])
	difference() {
		cylinder(h = 2, r1 = 6.2, r2 = 6.2, $fn = 100);
		cylinder(h = 2, r1 = 5.2, r2 = 5.2, $fn = 100);
	}
}

module rhombus_and_circle() {
	rhombus();
	circle();
}

module render() {
	sides();
	corners();
	translate([18,3.4,0])
	rhombus_and_circle();
}

render();



