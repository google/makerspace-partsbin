dia_1 = 65.0;
dia_2 = 48.0;
dia_hose = 31.0;
meat = 10;
back_cut = 6;
angle = -45;
hose_dist = 90;
through_hole_dia = 4.5;
grab_hole_dia = 3.3;


$fn=256;

module SpindleHolePattern(d=grab_hole_dia) {
  $fn=32;
  translate([(dia_1+meat)/2,0]) circle(d=d);
  translate([-(dia_1+meat)/2,0]) circle(d=d);
}

module HoseHolePattern(d=grab_hole_dia, include_big_hole=true) {
  $fn=32;
  rotate([0,0,angle]) translate([hose_dist,0]) union() {
    translate([0, (dia_hose+meat)/2]) circle(d=d);
    translate([0, -(dia_hose+meat)/2]) circle(d=d);
    translate([(dia_hose+meat)/2, 0]) circle(d=d);
    if(include_big_hole) circle(d=dia_hose,$fn=256);
  }
}

module MainTrim() {
  translate([-50,dia_1/2+back_cut]) square([100,100]);
}

module Layer0() {
  difference() {
    circle(d=dia_1+meat*2);
    circle(d=dia_1);
    SpindleHolePattern();
    MainTrim();
  }
}

module Layer0_Hose() {
  difference() {
    rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose+meat*2);
    HoseHolePattern();
  }
}

module Layer1() {
  difference() {
    hull() {
      circle(d=dia_1+meat*2);
      rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose+meat*2);
    }
    circle(d=dia_1);
    rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose);
    SpindleHolePattern(through_hole_dia);
    HoseHolePattern(through_hole_dia);
    MainTrim();
  }
}

module Layer2() {
  difference() {
    hull() {
      circle(d=dia_1+meat*2);
      rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose+meat*2);
    }
    hull() {
      circle(d=dia_2);
      rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose);
    }
    SpindleHolePattern(through_hole_dia);
    HoseHolePattern(through_hole_dia);
    MainTrim();
  }
}

module LayerN() {
  difference() {
    hull() {
      circle(d=dia_1+meat*2);
      rotate([0,0,angle]) translate([hose_dist,0]) circle(d=dia_hose+meat*2);
    }
    circle(d=30);
    SpindleHolePattern(through_hole_dia);
    HoseHolePattern(through_hole_dia, false);
    MainTrim();
  }
}
      

module Demo() {
  translate([0,0,3]) linear_extrude(height=12) Layer0();
  translate([0,0,3]) linear_extrude(height=12) Layer0_Hose();
  color([1,1,1,0.5]) linear_extrude(height=3) Layer1();
  translate([0,0,-12]) linear_extrude(height=12) Layer2();
  translate([0,0,-24]) linear_extrude(height=12) Layer2();
  color([1,1,1,0.5]) translate([0,0,-27]) linear_extrude(height=3) LayerN();
}

module CutPlan() {
  Layer0();
  translate([10,60]) Layer0_Hose();
  translate([70,-80]) rotate([0,0,-90-45]) Layer2();
  translate([0,-160]) rotate([0,0,180]) rotate([0,0,-90-45]) Layer2();
}

module CutPlan2() {
  rotate([0,0,-146]) Layer1();
  translate([-70,-70]) rotate([0,0,34]) LayerN();
}

//CutPlan();
//Demo();
rotate([0,0,180-45]) Layer2();
