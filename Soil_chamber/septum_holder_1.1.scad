// parameters

sheet_metal_width = 0.5;

septum_column_height = 9;
septum_top_radius = 5.8; // d= 11.6
septum_bottom_radius = 4.55; // d = 9.1
septum_height = 18.2;

// looking for snuggest fit
// v1.1 
//septum_expand_factor = 1;
// v1.2 ok
//septum_expand_factor = 1.1;
// v1.4 with original extruder
//septum_expand_factor = 1.04;
// v1.8 with original extruder
septum_expand_factor = 1.01;


max_screw_cap_height = 11.9;
min_screw_cap_height = 9;

outer_screw_cap_radius = 13.95;
inner_screw_cap_radius = 11.3;

exploded_view_offset = 15;

threaded_ring_height = 9;
threaded_inner_radius = 10;
threaded_outer_radius = 11.2;

// looking for a snug fit factor for the threaded ring
// v 1.1 too loose
//column_shrink_factor = 0.93;
// v 1.2 
//column_shrink_factor = 1;
// v 1.3 Too big
//column_shrink_factor = 1.1;
// v 1.4
column_shrink_factor = 0.99;
// v 1.5
column_shrink_factor = 1.03;
// v 1.7
column_shrink_factor = 1.01;
// v 1.8
column_shrink_factor = 0.98;


plate_width = 50;
plate_length = 50;
plate_height = 2.3;

screw_radius = 2;

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

		cylinder(r = threaded_inner_radius * column_shrink_factor, h = plate_height + threaded_ring_height, $fn = 100);

}

module septum() {

		cylinder(r1 = septum_bottom_radius * septum_expand_factor, r2 = septum_top_radius * septum_expand_factor, h = septum_height, $fn = 100);

}

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

	}
}

/***************************

	SEPTUM COLUMN

	Septum is offset so top faces of column and septum match

****************************/

module septum_column() {

difference() {
		column();
		translate([0,0, plate_height + threaded_ring_height - septum_height])
		septum();
}


}


module plate_plus_column() {

	difference() {
		union() {

			plate();
			column();
		}
		translate([0,0, (plate_height + threaded_ring_height) - septum_height])
		septum();
	}
	
}

translate([plate_width/2,plate_width/2,0])
plate_plus_column();

/*
translate([threaded_outer_radius,threaded_outer_radius,0])
union() {
	plate();
	septum_column();
}
*/
