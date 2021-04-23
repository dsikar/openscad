/*
difference() {
cube([10,10,2], center=true);

cylinder(h = 2, r = 5, center=true, $fn = 100);

translate([0,-2.5,0])
cube([10,5,2], center=true);

translate([-5,-5,0])
#cube([5,10,2], center=true);
}


difference () {
translate([8,2,0])
cube([2,2,2]);
translate([8,4,0])
cylinder(h = 2, r = 2, $fn = 100);}

*/

/*
translate([0,9,1])
rotate ([0,90,0])
cylinder(h = 20, r = 1); //, $fn = 100);

translate([20,9,1])
sphere(r = 1); //, $fn = 100);

translate([20,9,1])
rotate ([90,0,0])
cylinder(h = 20, r = 1); //, $fn = 100);


translate([20,9,1])
sphere(r = 1); //, $fn = 100);

translate([20,9,1])
cube([5,5,2]);
*/

// hypotenuse = 10,606601717798212866012665431573

translate([0,9.6,1])
rotate ([0,90,0])
cylinder(h = 10.6, r = 1); //, $fn = 100);


translate([9.6,10.6,1])
rotate ([90,0,0])
cylinder(h = 10.6, r = 1); //, $fn = 100);