
// from threads.scad
// convert to imperial 27.52mm, 8 turns per inch (no need to convert, length and n_starts
// module english_thread_tap(diameter=0.25, threads_per_inch=20, length=0.5, n_starts=1)
// english_thread_tap(1.00393701, 8, 0.57086614, 1);

module outer_ring_tap_29mmDiam() {
	import("C:\\Users\\Intel\\Documents\\OpenSCAD\\FunnelTip\\OuterRingTap_29mmDiam.stl");	
}



		difference() {
			cylinder(h = 14.5, r = 20.9, $fn = 100);
			union() {
			cylinder(h = 14.5, r = 12.875, $fn = 100);
			outer_ring_tap_29mmDiam();		
			}
		}

