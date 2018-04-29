module dogbone_edge_negative(material_thickness, bit_size, tab_width) {
  translate([-tab_width/2,-material_thickness])
    square([tab_width,material_thickness+1]);
  for(x_scale=[1,-1])
    scale([x_scale,1])
    translate([(tab_width-bit_size)/2,-material_thickness])
    circle(d=bit_size,$fn=100);
}

module dogbone_inner_negative(material_thickness, bit_size, tab_width) {
  translate([-tab_width/2,-material_thickness/2])
    square([tab_width,material_thickness]);
  for(x_scale=[1,-1]) for(y_scale=[1,-1])
    scale([x_scale,y_scale])
    translate([(tab_width-bit_size)/2,-material_thickness/2])
    circle(d=bit_size,$fn=100);
}

module dogbone_finger_positive(material_thickness, bit_size, tab_width) {
  translate([-tab_width/2,-1])
    square([tab_width,material_thickness+1]);
}

module dogbone_finger_negative(material_thickness, bit_size, tab_width, hole=true) {
  for(x_scale=[1,-1])
    scale([x_scale,1])
    translate([(tab_width+bit_size)/2,0])
    circle(d=bit_size,$fn=100);
  if(hole)
    translate([0,material_thickness/2]) circle(d=bit_size,$fn=100);
}


