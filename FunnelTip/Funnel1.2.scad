// single funnel v1.2
module funnel () {
		// Part 1, funnel

		// diameter 32.8 (radius , place (x.y) such that there is 1mm margin
		translate([17.4, 17.4, 0])
		union() {
			difference() { 	
				cylinder(h = 12.8, r1 = 16.4, r2 = 8.95, $fn = 100);		
				cylinder(h = 8.7, r1 = 14.9, r2 = 6.75, $fn = 100); // r1 = 15.4
				translate([0, 0, 8.7])
				cylinder(h = 7.5, r = 6.75, $fn = 100);
			}
			translate([0, 0, 12.8])
			difference() { 
				cylinder(h = 50.7, r = 8.95, $fn = 100);		
				cylinder(h = 50.7, r = 6.75, $fn = 100);
			}
		}
}

funnel();