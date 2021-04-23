// parametric sandwich toaster latch	

linear_extrude(height = 10, center = false, convexity = 10, twist = 0)
circle(r = 1, $fn = 100);

cube([19,34,2]);

rotate_extrude(convexity = 10, $fn = 100)
translate([2, 0, 0])
circle(r = 1, $fn = 100);