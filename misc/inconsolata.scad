// High Quality 
$fn=30;


// DXF File containing the text
translate([32.7954545455, 2.0, 2.25]) 
    scale([0.636404366243, 0.636404366243, 1.5]) 
        dxf_linear_extrude(file = "inconsolata.dxf", height = 1, center = true); 
        // linear_extrude() needs to replace dxf_linear_extrude() on next version, as dxf_linear_extrude() is now deprecated

// Rounded Box 
translate([35.5,5.5,0.75])      roundedBox(71.0,11.0,1.5, 1.5);



/*
 *  OpenSCAD Shapes Library (www.openscad.org)
 *  Copyright (C) 2009  Catarina Mota
 *  Copyright (C) 2010  Elmo Mäntynen
 *
 *  License: LGPL 2.1 or later
*/

/* Extracted from OpenSCAD Library */

// size is a vector [w, h, d]
module roundedBox(width, height, depth, radius) {
  size=[width, height, depth];
  cube(size - [2*radius,0,0], true);
  cube(size - [0,2*radius,0], true);
  for (x = [radius-size[0]/2, -radius+size[0]/2],
       y = [radius-size[1]/2, -radius+size[1]/2]) {
    translate([x,y,0]) cylinder(r=radius, h=size[2], center=true);
  }
}
