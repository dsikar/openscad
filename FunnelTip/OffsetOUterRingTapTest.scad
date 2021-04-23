module outer_ring_tap_29mmDiam() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_29mmDiam.stl");	
}

module outer_ring_tap_29dot52mmDiam() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_29.52mmDiam.stl");	
}

module outer_ring_tap_27dot52mmDiam() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_27.52mmDiam.stl");	
}

module outer_ring_tap_25dot5mmDiam() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_25.5mmDiam.stl");	
}


/*
		difference() {
			cylinder(h = 14.5, r = 20.9, $fn = 100);
			union() {
			cylinder(h = 14.5, r = 12.875, $fn = 100);
			#outer_ring_tap_25dot5mmDiam();		
			}
		}
*/

			outer_ring_tap_29mmDiam();	
			translate([0, 0, 12.0])
			#cylinder(h = 14.5, r = 12.875, $fn = 100);
				
			