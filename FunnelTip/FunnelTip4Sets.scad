module 2sets() {
	union() {

		// Part 1, funnel

		// diameter 32.8 (radius , place (x.y) such that there is 1mm margin
		translate([17.4, 17.4, 0])
		union() {
			difference() { 	
				cylinder(h = 12.8, r1 = 16.4, r2 = 8.95, $fn = 100);		
				cylinder(h = 8.7, r1 = 15.4, r2 = 6.75, $fn = 100);
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


		// Part 3, ring 1

		translate([21.9, 55.7, 0])
		difference() {
			cylinder(h = 25.5, r = 20.9, $fn = 100);
			cylinder(h = 25.5, r = 12.875, $fn = 100);
		}

		// Part 4, ring 2

		translate([55.95, 55.95, 0])
		difference() {
			cylinder(h = 5, r = 12.15, $fn = 100);
			cylinder(h = 5, r = 8.3, $fn = 100);
		}
	}

	// 2nd set


	translate([78.6,0,0])
	union() {

		// Part 1, funnel

		// diameter 32.8 (radius , place (x.y) such that there is 1mm margin
		translate([17.4, 17.4, 0])
		union() {
			difference() { 	
				cylinder(h = 12.8, r1 = 16.4, r2 = 8.95, $fn = 100);		
				cylinder(h = 8.7, r1 = 15.4, r2 = 6.75, $fn = 100);
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


		// Part 3, ring 1

		translate([21.9, 55.7, 0])
		difference() {
			cylinder(h = 25.5, r = 20.9, $fn = 100);
			cylinder(h = 25.5, r = 12.875, $fn = 100);
		}

		// Part 4, ring 2

		translate([55.95, 55.95, 0])
		difference() {
			cylinder(h = 5, r = 12.15, $fn = 100);
			cylinder(h = 5, r = 8.3, $fn = 100);
		}
	}
}
// 1st pair
2sets();
// 2nd pair - offset
translate([0, 77, 0])
2sets();
/*
module ring() {
	difference() {
		cylinder(h=3, r=15,$fn=100);
		cylinder(h=3, r=13.5,$fn=100);
	}
}


difference() {
	net_weaving_needle();
	translate([8.50,67,-0.5])
	rotate(a=[0,0,-90]) {
		ascii_fish();
	}
}


translate([21,21.5,0])
weaving_board();

translate([38,104.75,0])
ring();
*/