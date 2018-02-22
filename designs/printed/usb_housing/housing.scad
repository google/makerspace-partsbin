module Housing(metal_wide=12.2,metal_tall=4.5,wide=20,thick=10,pegs=false,logo=false,screw_holes=1) {
  difference() {
    translate([-wide/2,0,0]) cube([wide,35,thick/2]);
    difference() {
      translate([-metal_wide/2,-0.01,(thick-metal_tall)/2])
        cube([12.2,15.01,10]);
      if(pegs) {
        for(x_scale=[1,-1]) scale([x_scale,1,1])
          translate([6/2,11,(thick-metal_tall)/2]) cylinder(d1=3,d2=2.8,$fn=32,h=1.2);
      }
    }
    // wire fanout
    translate([0,14.99,(thick-metal_tall)/2])
      linear_extrude(height=10)
      polygon(points=[[metal_wide/2,0], [6.7/2,9], [-6.7/2,9], [-metal_wide/2,0]]);

    // wire exit
    translate([0,14.99,thick/2]) rotate([-90,0,0])
      cylinder(d=4.2,h=100,$fn=32);
    // outside taper
    for(x_scale=[1,-1]) scale([x_scale,1,1])
      translate([0,0,-0.01]) linear_extrude(height=10)
      polygon(points=[[wide/2+.01,15], [wide/2+.01,36], [4.2/2+2,36], [4.2/2+2,28]]);
    // clamping holes
    for(x_scale=[1,-1]) scale([x_scale,1,1])
      translate([(wide+metal_wide)/4,12,-1]) cylinder(d=screw_holes,h=10,$fn=32);
    // TODO usb logo
  }
}

Housing(screw_holes=2);
translate([25,0,0]) Housing(pegs=true, logo=true, screw_holes=2.5);
