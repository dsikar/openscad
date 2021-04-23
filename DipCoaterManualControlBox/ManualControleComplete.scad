/***********************************

	Dip Coater Manual Control Enclosure

	      	Exploded View

***********************************/

module exploded_view() {
	color("Green")

	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\cover_fixed.stl");

	color("Blue")
	translate([4.5, 4.5, 12.5])
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\DipCoaterManualControlElectronics_fixed.stl");

	color("Yellow")
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterManualControlBox\\bottom_plate.stl");

}

exploded_view();