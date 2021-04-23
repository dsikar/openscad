// v1.2 changed inside radius of funnel to 14.9 for a broader print base
// v1.3 added thread to ring 1, removed top notch from wire groove

module outer_ring_tap_29mmDiamRightHanded() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_29mmDiamRightHanded.stl");	
}

module funnel_tip() {
	union() {

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


		// Part 2, funnel tip


		/* Notes on placing grooves 
		Base shape (cube + cylinder) is dislocated based on largest radius minus width of cube.
		*/

		// max radius 41.8, place (x.y) such that there is 1mm margin
		// between all elements

		difference() {
			translate([55.7, 21.9, 0])
			union() {
			//base
				difference() {
					cylinder(h = 11.6, r1 = 16.3, r2 = 20.9, $fn = 100); // r1 = 32.6, r2 = 41.8
					cylinder(h = 11.6, r1 = 15.3, r2 = 9, $fn = 100); // r1 = 30.6, r2 = 18
				}
				translate([0, 0, 11.6])
				difference() {
					cylinder(h = 15, r = 20.9, $fn = 100);
					cylinder(h = 15, r = 9, $fn = 100);
				}
				translate([0, 0, 26.6])
				difference() {
					cylinder(h = 10, r = 12.875, $fn = 100);
					cylinder(h = 10, r = 9, $fn = 100);
				}
			}

			translate([55.7, 21.9, 19.6])
			difference() {
				cylinder(h=3.5, r = 20.9, $fn = 100);
				cylinder(h=3.5, r1 = 18.5, r2 = 20.9, $fn = 100);
			}

			// 1st groove, S
			translate([55.7, 2.15,0])
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,0]) cylinder 
				(h = 2.3, r=2.25, center = true, $fn = 100);
				translate([0, 0, 10.4])	  
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}

			// 2nd groove, N
			// translate([55.7, 2.15,0]) // 2.15 + 39.5 = 41.65
			translate([55.7, 41.65,0]) 
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,0]) cylinder 
				(h = 2.3, r=2.25, center = true, $fn = 100);
				translate([0, 0, 10.4])	  
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}

			// 3rd groove, SW
			translate([38.596, 12.025,0]) 
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,120]) cylinder (h = 2.3, r=2.25, center = true, $fn = 100);

				translate([0, 0, 10.4])	
				rotate ([0,0,120])   
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}

			// wire groove, between S and SW groove
			translate([45.825, 4.796,0]) 
			union() {
				//translate([0, 0, 20.8])	  
				//rotate ([90,0,150]) cylinder (h = 2.3, r=2.25, center = true, $fn = 100);

				translate([0, 0, 9.801]) // added one thousand of a mm to eliminate "surface skin"
				rotate ([0,0,150])   
				//cube([4.5, 2.3, 20.8], center = true, $fn = 100);
				cube([4.5, 2.3, 19.602], center = true, $fn = 100);
			}

			// 4th groove, NE
			translate([72.804, 31.775,0]) 
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,120]) cylinder (h = 2.3, r=2.25, center = true, $fn = 100);

				translate([0, 0, 10.4])	
				rotate ([0,0,120])   
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}

			// 5th groove, SE
			translate([72.804, 12.025,0]) 
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,60]) cylinder (h = 2.3, r=2.25, center = true, $fn = 100);

				translate([0, 0, 10.4])	
				rotate ([0,0,60])   
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}

			// 6th groove, SE
			translate([38.596, 31.775,0]) 
			union() {
				translate([0, 0, 20.8])	  
				rotate ([90,0,60]) cylinder (h = 2.3, r=2.25, center = true, $fn = 100);

				translate([0, 0, 10.4])	
				rotate ([0,0,60])   
				cube([4.5, 2.3, 20.8], center = true, $fn = 100);
			}
		}


		// Part 3, threaded ring 1

		translate([21.9, 55.7, 0])
		difference() {
			cylinder(h = 25.5, r = 20.9, $fn = 100);
			cylinder(h = 25.5, r = 12.875, $fn = 100);
			outer_ring_tap_29mmDiamRightHanded();
		}

		// Part 4, ring 2
/*
		translate([55.95, 55.95, 0])
		difference() {
			cylinder(h = 5, r = 12.15, $fn = 100);
			cylinder(h = 5, r = 8.3, $fn = 100);
		}
*/

	}
}

funnel_tip();
