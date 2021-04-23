translate([30,30,0])
union() {
/*
	difference() {
		cylinder(r = 50, h = 1, , $fn = 100);
		cylinder(r = 49, h = 1, , $fn = 100);
	}

	difference() {
		cylinder(r = 40, h = 1, , $fn = 100);
		cylinder(r = 39, h = 1, , $fn = 100);
	}
*/
	difference() {
		cylinder(r = 30, h = 1, , $fn = 100);
		cylinder(r = 29, h = 1, , $fn = 100);
	}

	difference() {
		cylinder(r = 20, h = 1, , $fn = 100);
		cylinder(r = 19, h = 1, , $fn = 100);
	}

	difference() {
		cylinder(r = 10, h = 1, , $fn = 100);
		cylinder(r = 9, h = 1, , $fn = 100);
	}
}