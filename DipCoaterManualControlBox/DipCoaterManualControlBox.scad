/*******************************

	Dip Coater Manual Control Box

	v0.1 16.10.2012

*******************************/
/*

1. Width and length

LCD determines limits.

LCD size is 84.15 x 44mm

Is is shifted 21.31 sideways and 41.165 upwards - see DipCoaterManualControlElectronics.scad - clearing both edges.

Dimensions are 105.46 x 85.165mm.

Adding 2mm gap and 2.5mm wall, we add 9mm to both width and length.

w = 114.46, l = 94.165mm.

2. Height

Height is the thickness of the electronics' plus, plus LCD vertical offset, plus thickness of lcd pcb, plus gap between cover and lcd pcb, plus 6mm offset to back cover. To be decided; if box walls sit on backplate or vice versa.
*/
module cover() {
	translate([4.5, 4.5, 6])
	cube([114.46, 94.165, 2.5]);
}