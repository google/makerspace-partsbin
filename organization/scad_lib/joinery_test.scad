gMaterialThickness = 6.4;
gBitSize = 4;
gArmHoleClearance = 4;
gArmHoleGrip = 3.3;

include <joinery.scad>


module slot_thickness_test1() {
  difference() {
    union() {
      square([80,10]);
      for(x=[20,60]) translate([x, 10]) dogbone_finger_positive(gMaterialThickness, gBitSize, 20);
    }
    for(x=[20,60]) translate([x, 10]) dogbone_finger_negative(gMaterialThickness, gBitSize, 20);
    translate([5,5]) circle(d=gArmHoleGrip,$fn=256);
  }
}

module slot_thickness_test2() {
  difference() {
    square([80,40]);
    for(x=[20,60]) translate([x, 40]) dogbone_edge_negative(gMaterialThickness, gBitSize, 20);
    for(x=[20,60]) translate([x, 12]) dogbone_inner_negative(gMaterialThickness, gBitSize, 20);
    translate([5,5]) circle(d=gArmHoleClearance,$fn=256);
  }
}


slot_thickness_test1();
translate([0,26]) slot_thickness_test2();
