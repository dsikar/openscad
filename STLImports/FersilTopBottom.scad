module base() {
	import("C:\\Users\\Intel\\Downloads\\base_14-04-14.stl");
}

module tampa() {
	import("C:\\Users\\Intel\\Downloads\\tampa_14-04-14.stl");
}


translate([33.2,37.7,1.9])
rotate([0,-90,0])
base();


module tampa() {
	import("C:\\Users\\Intel\\Downloads\\tampa_14-04-14.stl");
}

//translate([10.2,37.7,1.9])
translate([10.2,37.9,-8.4])
rotate([0,90,0])
tampa();