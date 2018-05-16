include <yellow_bin_rack.scad>
for(x=[0:6-1])
  translate([x*61,0]) rails2_upright();
