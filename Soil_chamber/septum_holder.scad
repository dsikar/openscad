// parameters

sheet_metal_width = 0.5;

plate_width = 50;
plate_length = 50;
plate_height = 3;

septum_column_height = 9;
septum_top_radius = 7.1;
septum_bottom_radius = 6.25;
septum_height = 10;

max_screw_cap_height = 11.9;
min_screw_cap_height = 9;
outer_screw_cap_radius = 13.95;
inner_screw_cap_radius = 11.3;

threaded_ring_height = 9;
threaded_inner_radius = 10;
threaded_outer_radius = 11.2;

exploded_view_offset = 15;

module screw_cap() {

	difference() {
		cylinder(r = outer_screw_cap_radius, h = max_screw_cap_height, , $fn = 100);
		cylinder(r = inner_screw_cap_radius, h = min_screw_cap_height, , $fn = 100);
	}

}

// hole to allow needle to pierce septum
module screw_cap_hole() {

	translate([0,0,min_screw_cap_height])
	cylinder(r = septum_bottom_radius / 2, h = max_screw_cap_height - min_screw_cap_height, $fn = 100);

}

module screw_cap_with_hole() {

	difference() {
		screw_cap();
		screw_cap_hole();
	}

}

module threaded_ring() {

	difference() {
		cylinder(r = threaded_outer_radius, h = threaded_ring_height, , $fn = 100);
		cylinder(r = threaded_inner_radius, h = threaded_ring_height, , $fn = 100);
	}

}

module septum_column() {

	difference() {
		column();
		translate([0,0,(sheet_metal_width + plate_height + threaded_ring_height) - septum_height])
		septum();
		// remove anything below septum
		cylinder(r = septum_bottom_radius, h = (sheet_metal_width + plate_height + threaded_ring_height) - septum_height, $fn = 100);
	}

}

module column() {

		cylinder(r = threaded_inner_radius * 0.92, h = sheet_metal_width + plate_height + threaded_ring_height, $fn = 100);

}

module septum() {

		cylinder(r1 = septum_bottom_radius, r2 = septum_top_radius, h = septum_height, $fn = 100);

}

/************************

	SCREW HOLE

************************/

module screw_hole() {

	cylinder(r = screw_radius, h = plate_height, $fn = 100);

}

module plate_holes() {

	// place 25% from edge to centre
	placement_hypotenuse = sqrt(pow(plate_width, 2) + pow(plate_width, 2)) * 0.30;
	opp = sin(45) * placement_hypotenuse;
	adj = cos(45) * placement_hypotenuse;

	// first hole, top right
	translate([adj,opp,0])
	screw_hole();

	// second hole, bottom right
	translate([adj,opp * -1,0])
	screw_hole();

	// third hole, top left
	translate([adj * -1,opp,0])
	screw_hole();

	// fourth hole, bottom left
	translate([adj * -1,opp * -1,0])
	screw_hole();
}

module plate() {
	
	hypotenuse = sqrt(pow(plate_width/2, 2) + pow(plate_width/2, 2));
	opp = sin(45) * hypotenuse;
	adj = cos(45) * hypotenuse;

	difference()
	{
		translate([adj * -1,opp * -1,0])
		cube([plate_width,plate_length,plate_height]);

		// holes
		plate_holes();

		// septum hole
		cylinder(r = septum_bottom_radius, h = plate_height, $fn = 100);
	}
}

module plate_plus_septum_column() {

	union() {

		plate();
		//translate([0,0,plate_height])
		septum_column();

	}

}


translate([0,0,exploded_view_offset * 3])
screw_cap_with_hole();

translate([0,0,exploded_view_offset * 2])
threaded_ring();

translate([0,0,exploded_view_offset + plate_height])
septum();

plate_plus_septum_column();

