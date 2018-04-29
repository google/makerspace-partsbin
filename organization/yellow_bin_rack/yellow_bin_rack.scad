/* For the slimmer size of ~45mm deep bins, the dimensions in mm are:

          Depth*  Top   Below   Above Rail   Below Rail
  Stanley 322     422   405     13           40
  HF      317     417   401     32           25
  * At rail

*/
gMaterialThickness = 12.2;
gBitSize = 3.4;
gInsideWidth=428;
gArmHoleSpacing=340;
gHoleInset = 10.0;
gDepth=gArmHoleSpacing + gHoleInset*2;
gShelfPitch = 70.0;
gShelfOffset = 40.0; // from bottom of top reinforcement

gArmHoleClearance = 4.2;
gArmHoleGrip = 3.3;

gTabPositions = [40/2-4,90];
gTabWidth = 40;
gSideHolePositions = [53];

gCasterHoleSpacing = [46, 28];
gCasterHoleSize = 6.5;

include <../scad_lib/joinery.scad>

module rail_left(aesthetic_radius=5, inside_radius=gBitSize/2) {
  $fn=256;
  difference() {
    offset(r=-inside_radius)
      offset(r=aesthetic_radius+inside_radius)
      offset(r=-aesthetic_radius) difference() {

      square([gArmHoleSpacing+gHoleInset*2,35]);
      hull() {
        translate([gHoleInset*2,22]) square([100,100]);
        translate([gArmHoleSpacing,22]) rotate([0,0,45]) square([100,100]);
      }
      // Not necessary on Stanley, but definitely for HF
      translate([100,30]) square([1000,10]);
    }
    hull() {
      translate([gHoleInset*2+inside_radius,22]) circle(r=inside_radius);
      translate([gHoleInset*2+inside_radius,100]) circle(r=inside_radius);
    }
    //translate([gHoleInset,22]) circle(d=7);
    //translate([gArmHoleSpacing+gHoleInset,22]) circle(d=7);
    // TODO should these bit bit-size to avoid a tool change?
    // I originally had it do peck drill with a 2mm bit to enlarge on drill
    // press, and did outside with 6mm bit...
    // TODO (and this requires 3d, or hacks) the counterbore
    translate([gHoleInset,22]) circle(d=gArmHoleGrip);
    translate([gArmHoleSpacing+gHoleInset,22]) circle(d=gArmHoleGrip);
  }
}

module rails() {
  y=0;
  translate([0,y*(30+22+gBitSize*2)]) {
    rail_left();
    translate([gHoleInset*2+gBitSize,30+22+gBitSize]) scale([1,-1]) rail_left();
  }
}

module rails2() {
  rail_left();
  translate([380+gBitSize+1, 52+gBitSize+1]) rotate([0,0,180]) rail_left();
}

module handle_positive(r1=30,r2=15,r3=15,spacing=70,offset=-10) {
  offset(r=-10,$fn=256) offset(r=10) union() {
    translate([0,offset]) hull() for(x_scale=[1,-1]) scale([x_scale,1]) {
      translate([spacing/2,0]) circle(r=r1);
      translate([spacing/2+30,-30]) circle(r=r1);
    }
    translate([0,-20]) square([spacing+r1*4,40],center=true);
  }
}

module handle_negative(r1=30,r2=15,spacing=60,offset=-10) {
  hull() for(x_scale=[1,-1]) scale([x_scale,1])
    translate([spacing/2,offset]) circle(r=r2,$fn=256);
}

module side(aesthetic_radius=12) {
  w=gArmHoleSpacing+gHoleInset*2;
  h=550;
  difference() {
    union() {
      square([w,h]);
      translate([w/2,h]) handle_positive();
    }
    translate([w/2,h]) handle_negative();
    translate([w/2,0]) handle_positive();
    translate([40,40]) offset(r=aesthetic_radius,$fn=256) offset(r=-aesthetic_radius)
      square([w-80,h-80]);

    for(p=gTabPositions) for(x=[p,w-p])
      for(y=[0,h])
        translate([x,y]) rotate([0,0,y==0?180:0])
          dogbone_edge_negative(gMaterialThickness, gBitSize, gTabWidth);
    for(p=gSideHolePositions) for(x=[p,w-p])
      for(y=[gMaterialThickness/2,h-gMaterialThickness/2])
        translate([x,y]) circle(d=4, $fn=256);

    for(y=[0:6]) {
      translate([gHoleInset,-gShelfPitch*y-gShelfOffset-gMaterialThickness+h])
        circle(d=gArmHoleClearance,$fn=256);
      translate([w-gHoleInset,-gShelfPitch*y-gShelfOffset-gMaterialThickness+h])
        circle(d=gArmHoleClearance,$fn=256);
    }
  }
}

module caster_hole_pattern() {
  for(x_scale=[1,-1]) for(y_scale=[1,-1])
    scale([x_scale,y_scale]) translate([gCasterHoleSpacing[0]/2, gCasterHoleSpacing[1]/2])
    circle(d=gCasterHoleSize,$fn=256);
}

module top(handle_cutout=false) {
  w=gDepth;
  h=gInsideWidth;
  translate([0,gMaterialThickness]) difference() {
    union() {
      square([w,h]);
      for(p=gTabPositions) for(x=[p,w-p])
        for(y=[0,h])
          translate([x,y]) rotate([0,0,y==0?180:0])
            dogbone_finger_positive(gMaterialThickness, gBitSize, gTabWidth);
    }
    for(p=gTabPositions) for(x=[p,w-p])
      for(y=[0,h])
        translate([x,y]) rotate([0,0,y==0?180:0])
          dogbone_finger_negative(gMaterialThickness, gBitSize, gTabWidth, hole=false);
    // trim hanging tabs
    translate([-10,-20]) square([10,1000]);
    translate([w,-20]) square([10,1000]);
    if(handle_cutout) {
      translate([w/2,-35]) circle(d=110,$fn=256);
      translate([w/2,h+35]) circle(d=110,$fn=256);
    } else {
      for(x=[35,w-35]) for(y=[25,h-25])
        translate([x,y]) caster_hole_pattern();
      //translate([w/2,h/2]) text("Yellow Bin Rack v1.0", font="Nimbus Sans", halign="center", valign="center");
      translate([w/2,h/2]) circle(d=260, $fn=1024);
    }
  }
  
} 

module bottom() {
  top(false);
}


module all() {
  for(y=[gMaterialThickness,gInsideWidth+gMaterialThickness*2])
    translate([0,y,0]) rotate([90,0,0]) linear_extrude(height=gMaterialThickness) 
    side();
  translate([0,0,550-gMaterialThickness]) linear_extrude(height=gMaterialThickness) top(true);
  linear_extrude(height=gMaterialThickness) bottom();
}

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


rotate([0,0,90]) rails2();
translate([61,0]) rotate([0,0,90]) rails2();
translate([61*2,0]) rotate([0,0,90]) rails2();
translate([61*3,0]) rotate([0,0,90]) rails2();

//slot_thickness_test1();
//translate([0,26]) slot_thickness_test2();

//all();

//side();

//bottom();
//top(true);
//translate([400,0]) side();
// TODO top+3 rails is possible
