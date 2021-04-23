module baseplate(length, width, baseplate_thickness) {
  cube([width,length,baseplate_thickness], center = true);    
}
 
module hurst_motor() {
  L = 76;
  W = 56;
  H = 56;
  R = 31;
  translate([-0.5*L,0,0]) {
    difference() {
      color("DimGray")
      cube([L,W,H], center = true);
      for ( h = [ 0 : 3 ] ) {
        translate([0,R * sin(45 + 90 * h), R * cos(45 + 90 * h)]) rotate([0,90,0]) cylinder( r = 3, h = L + 2, $fn = 100, center = true);
      }
      rotate([0,90,0]) cylinder( r = 3.2, h = L + 2, $fn = 100, center = true);
      translate([-7, 0.5*W, 0.5*H]) rotate([45,0,0]) cube([L + 2,17,17], center = true);
      translate([-7,-0.5*W, 0.5*H]) rotate([45,0,0]) cube([L + 2,17,17], center = true);
      translate([-7, 0.5*W,-0.5*H]) rotate([45,0,0]) cube([L + 2,17,17], center = true);
      translate([-7,-0.5*W,-0.5*H]) rotate([45,0,0]) cube([L + 2,17,17], center = true);
    }
    translate([20,0,0]) rotate([0,90,0]) cylinder( r = 3.175, h = L + 20, $fn = 100, center = true);
  }
}
 
module a4l_motor_mount() {
  L = 74;
  W = 56;
  H = 56;
  R = 31;
  FK_W = 30;
  slice_top_bottom = 8;
  FK_mount_thickness = 20;
  color("LightGray")
  rotate([180,0,0])
  union() {
  translate([(+0.5*L) - 2,0,0]) {
    difference() {
      // Body
        cube([L-2,W,H], center = true);
      // Boltways
      for ( h = [ 0 : 3 ] ) {
        translate([0,R * sin(45 + 90 * h), R * cos(45 + 90 * h)]) rotate([0,90,0]) cylinder( r = 1.5, h = L + 2, $fn = 100, center = true);
      }
      // Motor flange plate hole
      translate([-18,0,0])
        rotate([0,90,0]) cylinder( r = 18, h = L, $fn = 150, center = true);
      // Flanged fixed side bearing mount plate hole
      translate([L/2,0,0])
        rotate([0,90,0])
          cylinder( r = 10, h = L, $fn = 100, center = true );
      // Coupling top and bottom faces
      translate([10,0,(H/2)-((slice_top_bottom-1)/2)])
        cube([L,W+2,slice_top_bottom], center = true);
      translate([10,0,-(H/2)+((slice_top_bottom-1)/2)])
        cube([L,W+2,slice_top_bottom], center = true);
      // Slot for coupling
      translate([-L*0.25,-0.5 * (W+2),0])
        cube([L/2,W+2,H/2]);
    }
  }
  translate([L - (FK_mount_thickness/2),0,0])
    difference() {
      cube([FK_mount_thickness,FK_W,FK_W], center = true);
      difference() {
        rotate([0,90,0])
          cylinder( r = FK_W / sqrt(2.0), h = FK_mount_thickness + 1, $fn = 100, center = true );
        rotate([0,90,0])
          cylinder( r = (FK_W / sqrt(2.0)) * 0.8,  h = FK_mount_thickness + 2, $fn = 100, center = true );
      }
      rotate([0,90,0])
        cylinder( r = 10, h = L, $fn = 100, center = true );
    }
  }
}
 
module m4_tap(l, csdepth) {
  union() {
    cylinder( h = l, r = 2, $fn = 100, center = true);
    translate([0,0,l/2 - csdepth/2]) 
      cylinder( h = csdepth, r = 4, $fn = 100, center = true);
  }
}
 
module coupling() {
  color("Silver")
  difference() {
    rotate([90, 0, 0]) cylinder(h = 30, r = 10, $fn = 100, center = true);
    rotate([90, 0, 0]) cylinder(h = 32, r = 5, $fn = 100, center = true);
  }
}
 
module nut(innerdia, outerdia) {
  difference() {
    rotate([90, 0, 0]) cylinder(h = 30, r = outerdia/2, $fn = 100, center = true);
    rotate([90, 0, 0]) cylinder(h = 30, r = (innerdia/2) * 1.05, $fn = 100, center = true);
  }
}
 
module screw(l) {
  zero_offset = 20;
  translate([0, l/2 + 40 + zero_offset,0])
    rotate([0,0,-90]) {
      hurst_motor();
      a4l_motor_mount();
    }
  translate([0, l/2 + 5 + zero_offset, 0]) coupling();
  translate([0, 0.5 * zero_offset, 0]) rotate([90, 0, 0]) color("LightGrey") cylinder(h = l + zero_offset, r = 5, $fn = 100, center = true);
}
 
module pillowblock(X,Y,Z, nut_id, nut_od) {
  union() {
    difference() {
      // Body and nut
      color("LightGrey")
      cube([X, Y, Z], center = true);
      rotate([90, 0, 0]) cylinder(h = Y * 1.1, r = 1.20 * (nut_id/2), $fn = 100, center = true);
      // Screw holes
      translate([  X/2 - 6,  Y/2 - 16,1]) m4_tap(Z+6, Z/4);
      translate([- X/2 + 6,  Y/2 - 16,1]) m4_tap(Z+6, Z/4);
      translate([  X/2 - 6,- Y/2 + 6,1]) m4_tap(Z+6, Z/4);
      translate([- X/2 + 6,- Y/2 + 6,1]) m4_tap(Z+6, Z/4);
    }
    translate([0,Y/2+15,0]) nut(nut_id, nut_od);
  }
}
 
module cassette(cassette_length, cassette_thickness, cassette_width) {
  half_width = 0.5 * cassette_width;
  half_thickness = 0.5 * cassette_thickness;
  translate([0,0,-cassette_thickness/2.0 - 2.0]) {
    difference() {
      cube([cassette_width,cassette_length,cassette_thickness], center = true);
      translate([0,0,5.0])
        cube([22,cassette_length + 4,cassette_thickness - 5.0], center = true);
      // Deep 45 degree bevel cut
      translate([half_width,0,half_thickness])
        rotate([0,45,0])
          cube([24,cassette_length + 2,24], center = true);
      // Deep 45 degree bevel cut
      translate([-half_width,0,half_thickness])
        rotate([0,45,0])
          cube([24,cassette_length + 2,24], center = true);
    }
  }
}
 
module nutcassette(position, pillowblock_offset, pillowblock_thickness, cassette_thickness, cassette_width, cassette_length, rail_transverse_offset) {
  color("Silver") union() {
    translate([0,pillowblock_offset,0]) 
      pillowblock(40, 50, pillowblock_thickness, 10, 24);
    translate([-rail_transverse_offset,0,-(0.5 * pillowblock_thickness - cassette_thickness - 2.0)])
      cassette(cassette_length, cassette_thickness, cassette_width);
    translate([ rail_transverse_offset,0,-(0.5 * pillowblock_thickness - cassette_thickness - 2.0)])
      cassette(cassette_length, cassette_thickness, cassette_width);
  }
}
 
module rail(L,W,H) {
  color("LightGrey")
  translate([0,0,-H/2]) {
    difference() {
      cube([W,L,H], center = true);
      for ( h = [ 10 : 55 : L - 9 ] ) {
        translate([0,(- 0.5 * L) + h],0) rotate([0,180,0]) m4_tap( H + 2, H * 0.2 );
      } 
    }
  }
}
 
module rails(position, cassette_thickness, rail_len, screw_length, pillowblock_thickness, rail_longitudinal_offset, rail_transverse_offset) {
  translate([-rail_transverse_offset,rail_longitudinal_offset,0])
    rail(rail_len, 20, 21.0);
  translate([ rail_transverse_offset,rail_longitudinal_offset,0])
    rail(rail_len, 20, 21.0);
  translate([0,0,0.5 * pillowblock_thickness - cassette_thickness - 2.0])
    screw(screw_length);
}
 
module railscrew(position, screw_length, pillowblock_thickness, cassette_thickness, cassette_width, cassette_length, rail_len, pillowblock_offset, rail_longitudinal_offset, rail_transverse_offset ) {
 
  railend_offset = cassette_length / 2.0;
  rail_midzero   = rail_len / 2.0;
  offset = (rail_midzero - railend_offset);
 
  rails(
    offset - position, 
    cassette_thickness,  
    rail_len,
    screw_length,
    pillowblock_thickness, 
    rail_longitudinal_offset,
    rail_transverse_offset
  );
}
 
module cassette_assy(position, screw_length, pillowblock_thickness, cassette_thickness, cassette_width, cassette_length, rail_len, pillowblock_offset, rail_transverse_offset) {
 
  railend_offset = cassette_length / 2.0;
  rail_midzero   = rail_len / 2.0;
  offset = (rail_midzero - railend_offset);
 
  translate([0,offset - position,0.5 * pillowblock_thickness - cassette_thickness - 2.0])
    nutcassette(
      offset - position, 
      pillowblock_offset, 
      pillowblock_thickness,
      cassette_thickness,
      cassette_width,
      cassette_length, rail_transverse_offset
    );
}
 
module pillars_solid(length,width,thickness,crossbar_length,crossbar_thickness,crossbar_endoffsets) {
  topbar_offset = 20;
  translate([0,0,-topbar_offset])
  difference() {
    // Synthesize crossbar pillars
    color("LightSteelBlue")
    union() {
      translate([crossbar_endoffsets, 0, length / 2 + 0.5 * crossbar_thickness]) 
        cube([thickness, width, length - topbar_offset], center = true);
      translate([-crossbar_endoffsets, 0, length / 2 + 0.5 * crossbar_thickness])
        cube([thickness, width, length - topbar_offset], center = true);
    }
    cube([crossbar_length, thickness, beamwidth], center = true);
  }
}
 
module angle_channel(length,channel_width,wall_thickness) {
  difference() {
    union() {
      translate([0.5 * wall_thickness, 0.5 * wall_thickness,0]) {
        translate([0,0.5 * (channel_width + wall_thickness),0])
          cube([wall_thickness, channel_width, length], center = true);
        translate([0.5 * (channel_width + wall_thickness),0,0])
          rotate([0,0,90])
            cube([wall_thickness, channel_width, length], center = true);
      }
      translate([wall_thickness, wall_thickness,0])
        cylinder( r = wall_thickness, h = length, $fn = 100, center = true);
    }
    translate([2*wall_thickness, 2*wall_thickness,0])
      cylinder( r = wall_thickness, h = length + 2, $fn = 100, center = true);
  }
}
 
module pillars(length,width,thickness,crossbar_length,crossbar_thickness,crossbar_endoffsets) {
  topbar_offset = 20;
  channel_wall  = 5;
  channel_width = 54;
  translate([0,0,-topbar_offset])
  difference() {
    // Synthesize crossbar pillars
    color("LightSteelBlue")
    union() {
      translate([crossbar_endoffsets, 0, length / 2 + 0.5 * crossbar_thickness]) { 
        translate([0,channel_wall + 0.5 * crossbar_thickness,0])
          rotate([0,0,0])
            angle_channel(length-topbar_offset,channel_width,channel_wall);
        translate([0,-(channel_wall + 0.5 * crossbar_thickness),0])
          rotate([0,0,270])
            angle_channel(length-topbar_offset,channel_width,channel_wall);
       }
 
      translate([-crossbar_endoffsets, 0, length / 2 + 0.5 * crossbar_thickness]) {
        translate([0,channel_wall + 0.5 * crossbar_thickness,0])
          rotate([0,0,90])
            angle_channel(length-topbar_offset,channel_width,channel_wall);
        translate([0,-(channel_wall + 0.5 * crossbar_thickness),0])
          rotate([0,0,180])
            angle_channel(length-topbar_offset,channel_width,channel_wall);
      }
    }
  }
}
 
module yz_gantry_assembly(y,z,crossbar_length, crossbar_thickness, pillowblock_offset) {
 
  width                    = 25.4 * 3;
  thickness                = 25.4;
  length                   = 130 + 300;
  rail_transverse_offset   = 50;
  rail_longitudinal_offset = 0;
 
  origa_z_raillength       = 200;
  z_screwlength            = 300;
  z_plate_length           = z_screwlength;
  z_motor_mount_offset     = 52;
  z_rail_transverse_offset = 60;
 
  spindleplate_thickness   = 12;
  spindleplate_length      = 180;
  spindleplate_width       = 175;// Min 108;
 
  beamwidth                = 130;
  halfcrossbar             = crossbar_length / 2;
  crossbar_endoffsets      = halfcrossbar - 0.5 * thickness;
 
  screw_length             = 500.0;
  pillowblock_thickness    = 25.4;
  cassette_thickness       = 28;
  cassette_width           = 63;
  cassette_length          = 102;
 
  rail_len                 = 300 + cassette_length;
  railend_offset           = cassette_length / 2.0;
  rail_midzero             = rail_len / 2.0;
  offset                   = (rail_midzero - railend_offset);
 
  // Generate vertical pillars to hold Y-Z axis gantry
  pillars(length,width,thickness,crossbar_length,crossbar_thickness,crossbar_endoffsets); 
 
  // Generate railscrew and cassette assembly 
  translate([0, 0, length - (0.5 * beamwidth)]) {
    // Top crossbar
    % color("LightSteelBlue")
      cube([crossbar_length + 54, thickness, beamwidth], center = true);
    rotate([0,90,90]) translate([0,0,-15]) {
      // Y-axis screw (horizontal gantry perpendicular to workpiece travel path)
      railscrew(y,
        screw_length,
        pillowblock_thickness,
        cassette_thickness, cassette_width, cassette_length,
        rail_len,
        pillowblock_offset, 
        rail_longitudinal_offset, 
        rail_transverse_offset
      );
      // Y-axis gantry ball screw nut and rail cassette mount
      cassette_assy(
        y,
        screw_length, 
        pillowblock_thickness, 
        cassette_thickness, cassette_width, cassette_length, 
        rail_len,
        pillowblock_offset,
        rail_transverse_offset
      );
 
      // Z-axis spindle mount assembly
      translate([0, offset - y, -(cassette_thickness + 2.0) - (0.5 * spindleplate_thickness)]) {
        // Z-axis mounting plate
        color("LightSteelBlue")
        cube([
          spindleplate_length,
          spindleplate_width,
          spindleplate_thickness
        ],center = true);
        // Z-axis assembly
        translate([-(origa_z_raillength * 0.5)+z,0,-30-(0.5 * spindleplate_thickness)])
          rotate([0,-180,90]) {
            railscrew(z_screwlength-z,z_screwlength, pillowblock_thickness,
              cassette_thickness, cassette_width, cassette_length, 
              origa_z_raillength + cassette_length,
              pillowblock_offset, 
              rail_longitudinal_offset,
              z_rail_transverse_offset
            );
            cassette_assy(origa_z_raillength-z,z_screwlength, pillowblock_thickness, 
              cassette_thickness, cassette_width, cassette_length, 
              origa_z_raillength + cassette_length,
              pillowblock_offset, z_rail_transverse_offset
            );
 
            % translate([0,0.5 * z_motor_mount_offset,0.5 * spindleplate_thickness])
            color("LightSteelBlue")
            difference() {
              cube([
                spindleplate_length,
                z_plate_length + z_motor_mount_offset,
                spindleplate_thickness
              ], center = true);
              m4_tap( spindleplate_thickness + 2, 0.2 * spindleplate_thickness); 
            }
          }
      }
    }
  }
 
}
 
module crossbar(y,crossbar_length, crossbar_thickness, crossbar_width, pillowblock_y) {
  radius = crossbar_thickness * 0.3;
 
  difference() {
    // Bottom crossbar
    color("LightSteelBlue")
    cube([crossbar_length, crossbar_width, crossbar_thickness], center = true);
    // Gantry
    union() {
      translate([0, 0, 0]) rotate([90, 0, 0])
      cylinder(h = crossbar_width + 1, r = radius, $fn = 100, center = true);
      translate([-90, 0, 0]) rotate([90, 0, 0])
      cylinder(h = crossbar_width + 1, r = radius, $fn = 100, center = true);
      translate([90, 0, 0]) rotate([90, 0, 0])
      cylinder(h = crossbar_width + 1, r = radius, $fn = 100, center = true);
    }
  }
}
 
module load_gantry(gantry_offset, position_x, position_y, position_z,
    screw_length,
    pillowblock_thickness, 
    cassette_thickness,
    cassette_width, 
    cassette_length,
    crossbar_length,
    crossbar_thickness,
    screw_length,
    pillowblock_offset_x,
    pillowblock_offset_y,
    baseplate_thickness,
    rail_transverse_offset,
    cassette_gap
  ) {
 
  railend_offset = (2 * (cassette_length) + cassette_gap) / 2.0;
  rail_midzero   = screw_length / 2.0;
  offset = (rail_midzero - railend_offset);
 
  crossbar_yoffset = offset - position_x;
  crossbar_zoffset = -0.5 * baseplate_thickness - cassette_thickness - 2.0 - 0.5 * crossbar_thickness;
 
  // Bottom cassette assembly, cassette pair 1
  translate([0,gantry_offset,-0.5 * baseplate_thickness]) {
    cassette_assy(
      position_x,
      screw_length,
      pillowblock_thickness, 
      cassette_thickness,
      cassette_width, 
      cassette_length, 
      screw_length,
      pillowblock_offset_x, 
      rail_transverse_offset);
  }
  // Bottom cassette assembly, cassette pair 2
  translate([0,gantry_offset - (cassette_length + cassette_gap),-0.5 * baseplate_thickness]) {
    cassette_assy(
      position_x,
      screw_length,
      pillowblock_thickness, 
      cassette_thickness,
      cassette_width, 
      cassette_length,
      screw_length,
      pillowblock_offset_x, 
      rail_transverse_offset);
  }
 
  translate([0, gantry_offset + crossbar_yoffset, crossbar_zoffset])
    rotate([0,0,180]) { 
      // Bottom crossbar
      crossbar(
        position_y,
        crossbar_length, crossbar_thickness, (2 * cassette_length) + cassette_gap,
        pillowblock_offset_y
      );
      // Y-Z gantry assy
      yz_gantry_assembly(
        position_y,
        position_z,
        crossbar_length,
        crossbar_thickness,
        pillowblock_offset_y
      );
    }
}
 
module frame() {
 
  position_x = 300;
  position_y = 150; // Max 300
  position_z = 100; // Max 200
 
  maximum_x = 600;
 
  x_rail_longitudinal_offset = 0;
  x_rail_centerline_offset   = 70;
 
  cassette_thickness         = 28;
  cassette_width             = 63;
  cassette_length            = 102;
  cassette_gap               = 20;
 
  crossbar_length            = 500;
  crossbar_thickness         = 12;
  crossbar_width             = 102;
 
  motor_mount_offset         = 52;
  pillowblock_thickness      = 25.4;
  screw_length               = maximum_x + (2.0 * cassette_length) + cassette_gap + 50;
 
  baseplate_thickness        = 12;
  baseplate_width            = 300;
  baseplate_length           = maximum_x + (2.0 * cassette_length) + cassette_gap + 100;
 
  pillowblock_offset_x       = -25;
  pillowblock_offset_y       = -25;
 
  echo(str("Baseplate l: ",baseplate_length));
  echo(str("Ball screw l: ",screw_length));
 
  rotate([0,0,-90]) {
 
    // Workpiece mounting base
    % color("Silver",0.3)
      translate([0,-0.5 * baseplate_length+0.5 * screw_length,0])
        baseplate(baseplate_length,baseplate_width,baseplate_thickness);
 
    // Generate X-axis railscrew
    translate([0,-motor_mount_offset,-0.5 * baseplate_thickness]) {
      railscrew(
        position_x,
        screw_length,
        pillowblock_thickness, 
        cassette_thickness,
        cassette_width, 
        crossbar_width, 
        screw_length,
        pillowblock_offset_x, 
        x_rail_longitudinal_offset,
        x_rail_centerline_offset
      );
    }
 
    // Load gantry A
    load_gantry(0, position_x + motor_mount_offset, position_y, position_z,
      screw_length,
      pillowblock_thickness, 
      cassette_thickness,
      cassette_width, 
      cassette_length,
      crossbar_length,
      crossbar_thickness,
      screw_length,
      pillowblock_offset_x,
      pillowblock_offset_y,
      baseplate_thickness,
      x_rail_centerline_offset,
      cassette_gap
    );
 
  }
}
 
// angle_channel(100,54,5);
frame();
// cassette(102, 28, 63);
// hurst_motor();
// a4l_motor_mount();
// screw(500);