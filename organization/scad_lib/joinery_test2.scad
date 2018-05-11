gMaterialThickness = 12.1;
gBitSize = 4;
gArmHoleClearance = 4;
gArmHoleGrip = 3.3;

include <joinery.scad>

ev = [[0, 0], [1, 10], [0, 40], [1, 60], [0, 90]];

module slot_thickness_test1() {
  $fn=32;
  difference() {
    union() {
      translate([0,-10]) square([100,20]);
      translate([0, 10]) hook_finger_positive(gMaterialThickness, gBitSize, ev);
    }
    translate([0, 10]) hook_finger_negative(gMaterialThickness, gBitSize, ev);
  }
}

module slot_thickness_test2() {
  difference() {
    square([100,40]);
    //for(x=[25,75]) translate([x, 40]) dogbone_edge_negative(gMaterialThickness, gBitSize, 30);
    for(x=[25,75]) translate([x, 20]) dogbone_inner_negative(gMaterialThickness, gBitSize, 30);
  }
}


slot_thickness_test1();
translate([0,40]) slot_thickness_test2();
