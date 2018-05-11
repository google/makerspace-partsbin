SIZE=100;

square([SIZE,SIZE],center=true);
for(r=[45,-45])
  rotate([0,0,r]) square([SIZE/(sqrt(2)/2),10], center=true);
