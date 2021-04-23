module inner_threaded_ring() {
	import("C:\\Users\\danielsikar\\Documents\\OpenSCAD\\FunnelTip\\FunnelTip1.4SmallRingThreaded.stl");	
}

// first row
translate([13, 13, 0])
inner_threaded_ring() ;

translate([39, 13, 0])
inner_threaded_ring() ;

// second row
translate([13, 39, 0])
inner_threaded_ring() ;

translate([39, 39, 0])
inner_threaded_ring() ;

// third row
translate([13, 65, 0])
inner_threaded_ring() ;

translate([39, 65, 0])
inner_threaded_ring() ;

// fourth row
translate([13, 91, 0])
inner_threaded_ring() ;

translate([39, 91, 0])
inner_threaded_ring() ;

// fifth row
translate([13, 117, 0])
inner_threaded_ring() ;

translate([39, 117, 0])
inner_threaded_ring() ;