union() {
difference () {

translate([0,1,0])
cube([150, 13, 2]); //$fn = 100);


translate([0,2,0])
cube([10, 11, 2]); //$fn = 100);

}

}


difference () {
translate([8,11,0])
cube([2,2,2]);
translate([8,11,0])
cylinder(h = 2, r = 2, $fn = 100);}

difference () {
translate([8,2,0])
cube([2,2,2]);
translate([8,4,0])
cylinder(h = 2, r = 2, $fn = 100);}

translate([0,14,1])
rotate ([0,90,0])
cylinder(h = 150, r = 1, $fn = 100);

translate([0,1,1])
rotate ([0,90,0])
cylinder(h = 150, r = 1, $fn = 100);