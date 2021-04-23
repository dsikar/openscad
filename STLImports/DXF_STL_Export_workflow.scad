/*
1. Import DXF file from Autodesk Inventor, position (if required, can also be translated/rotated once in stl format).
2. Export as STL.
3. Open STL file in OpenSCAD.
4. Export as DXF (this makes HeeksCAM understand the DXF file, as it cannot understand the original file coming from Autodesk Inventor.


*/
//rotate([90,0,0])
//translate([0,10,0])
//projection(cut=false) 
import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\FlatBarLockBottom.stl");

//rotate([180,0,0])
//translate([0,-23,-4])
//import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\FlatBarLocktop.stl");

//projection(cut=false) import("C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\TopBendingJig.stl");

/*
rotate([0,0,90])
translate([-1,-43,0])
dxf_linear_extrude(file="C:\\Users\\Intel\\Documents\\OpenSCAD\\DipCoaterBits\\TopBendingJig.dxf", height=2);
*/