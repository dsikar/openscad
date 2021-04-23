union(){
	difference() {
		// left half
		cylinder(h = 2, r =15, $fn = 100);

		translate([-15,-30,0])
		cube([30,30,2]);
	
		translate([-6.5,0,0])
		cube([21.5,15,2]);
	}

	translate([-13,0,0])
	difference() {
		// right half
		cylinder(h = 2, r =15, $fn = 100);

		translate([-15,-30,0])
		cube([30,30,2]);

		translate([-15,0,0])
		cube([21.5,15,2]);
	}
}