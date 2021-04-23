module lcd_pcb_screw_gap () {

	translate([1.325, 0, 0])
	cube([2.845, 2.65, 1.67]);
	translate([1.325, 1.325, 0])
	cylinder(h = 1.67, r1 = 1.325, r2 = 1.325, $fn = 100);	

}

module pcb() {

	// lcd pcb
	color("ForestGreen")
	cube([84.15, 44, 1.67]);

}

module lcd_pcb() {

	difference() {
		pcb();
		translate([79.98, 38.52, 0])
		// screw gap
		lcd_pcb_screw_gap ();
	}

}

module lcd_display() {

	color("Black")
	translate([4.25, 9.98, 1.67])
	cube([76.14, 28.25, 9.12]);

}

module lcd() {
	translate([21.31, 41.165, 3.71])
	union() {
			lcd_display();
			lcd_pcb();
	}
}

module hole() {
	cylinder(h = 1.25, r1 = 1.6, r2 = 1.6, $fn = 100);	
}

module control_pcb_holes() {

	// 1st hole
	translate([4.09, 3.92, 0])
	hole();
	// 2nd hole
	translate([3.25, 52.2, 0])
	hole();
	// 3rd hole
	translate([93.8, 3.36, 0])
	hole();
}

module control_pcb() {

	cube([98, 55.75, 1.25]);
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

module led() {
	color("Green")
	translate([14.35, 13.42, 1.25])
	cylinder(h = 13.76, r1 = 3.9, r2 = 3.9, $fn = 100);
}

module connector() {
	color("Brown")
	translate([8.49, 20.18, 1.25])
	cube([11.87, 30.95, 9.55]);	
}

module control_electronics() {
	union() {
		lcd();
		connector() ;
		led();
		buttons();
		difference() {
			control_pcb();
			control_pcb_holes();
		}
	}
}

/* sanity check on matching holes */

module no_offset_hole() {
	// height is arbitrarily set to 5mm
	cylinder(h = 5, r1 = 1.6, r2 = 1.6, $fn = 100);	
}

module offset_hole() {
	// height is the arbitrary 5mm plus the LCD offset (3.71)
	cylinder(h = 8.71, r1 = 1.325, r2 = 1.325, $fn = 100);
}

module props() {
	// 1st hole
	translate([4.09, 3.92, -5])
	no_offset_hole();
	// 2nd hole
	translate([3.25, 52.2, -5])
	no_offset_hole();
	// 3rd hole
	translate([93.8, 3.36, -5])
	no_offset_hole();
	// 4th hole
	translate([102.615, 81.01, -5])
	offset_hole();
}

module sanity_check() {

	color("Pink")
	props();	

}

sanity_check();

control_electronics(); 