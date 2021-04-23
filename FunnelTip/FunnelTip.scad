// Part 1, funnel

// diameter 32.8 (radius , place (x.y) such that there is 1mm margin
translate([17.4, 17.4, 0])
union() {
	difference() { 	
		cylinder(h = 12.8, r1 = 16.4, r2 = 8.95);		
		cylinder(h = 8.7, r1 = 15.4, r2 = 6.75);
		translate([0, 0, 8.7])
		cylinder(h = 7.5, r = 6.75);
	}
	translate([0, 0, 12.8])
	difference() { 
		cylinder(h = 50.7, r = 8.95);		
		cylinder(h = 50.7, r = 6.75);
	}
}


// Part 2, cap

// max radius 41.8, place (x.y) such that there is 1mm margin
// between all elements
translate([55.7, 21.9, 0])
union() {
//base
	difference() {
		cylinder(h = 11.6, r1 = 16.3, r2 = 20.9); // r1 = 32.6, r2 = 41.8
		cylinder(h = 11.6, r1 = 15.3, r2 = 9); // r1 = 30.6, r2 = 18
	}
	translate([0, 0, 11.6])
	difference() {
		cylinder(h = 15, r = 20.9);
		cylinder(h = 15, r = 9);
	}
	translate([0, 0, 26.6])
	difference() {
		cylinder(h = 10, r = 12.875);
		cylinder(h = 10, r = 9);
	}
}


// Part 3, ring 1

translate([21.9, 55.7, 0])
difference() {
	cylinder(h = 25.5, r = 20.9);
	cylinder(h = 25.5, r = 12.875);
}

// Part 4, ring 2

translate([55.95, 55.95, 0])
difference() {
	cylinder(h = 5, r = 12.15);
	cylinder(h = 5, r = 8.3);
}

