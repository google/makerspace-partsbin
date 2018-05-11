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

module dogbone_finger_negative(material_thickness, bit_size, tab_width, hole=true, dogbones=3) {
  if (dogbones == 1 || dogbones == 3)
    translate([(tab_width+bit_size)/2,0])
    circle(d=bit_size,$fn=100);
  if (dogbones == 2 || dogbones == 3)
    scale([-1,1])
    translate([(tab_width+bit_size)/2,0])
    circle(d=bit_size,$fn=100);
  if(hole)
    translate([0,material_thickness/2]) circle(d=bit_size,$fn=100);
}

function cat(L1, L2) = [for(L=[L1, L2], a=L) a];

function negate_events(events) = [for(ev=events) [1-ev[0], ev[1]]];
// TODO symmetrical version, or one that does something specific with the new part

function offset_events(ev, symmetric_value) = [for(i=[0:len(ev)-1]) (i==0?ev[i]:i==len(events)-1?[ev[i][0], ev[i][1]+symmetric_value*2]:[ev[i][0], ev[i][1]+symmetric_value])];

function mirror_events(ev, width) = [for(i=[0:len(ev)*2-1]) (i<len(ev)?ev[i]:[1-ev[len(ev)-(i-len(ev)+1)][0], width-ev[len(ev)-(i-len(ev)+1)][1]])];

//function events_from_position(ev, width) 

// first and last events define steady-state.
module generic_finger_positive(material_thickness, bit_size, events) {
  echo(events);
  for(i=[0:len(events)-1]) {
    if(events[i][0] == 1 && i < len(events)-1) { //begin notch
      translate([events[i][1], 0]) square([events[i+1][1]-events[i][1], material_thickness]);
    }
  }
}

module generic_finger_negative(material_thickness, bit_size, events, hole=true) {
  for(i=[0:len(events)-1]) {
    if((events[i][0] == 1) && i < len(events)-1) { // begin notch
      // can we always ignore last one, or need to know width?
      translate([events[i][1]-bit_size/2,0]) circle(d=bit_size);
      if(hole)
        translate([(events[i+1][1]+events[i][1])/2, material_thickness/2]) circle(d=bit_size);
    } else if(events[i][0] == 0 && i > 0) {
      translate([events[i][1]+bit_size/2,0]) circle(d=bit_size);
    }
  }
}

module hook_finger_positive(material_thickness, bit_size, events, slide=8, a=0.5, t=8, r=1.5) {
  echo(events);
  for(i=[0:len(events)-1]) {
    if(events[i][0] == 1 && i < len(events)-1) {
      x1 = events[i][1]; x2 = events[i+1][1];
      offset(r=r) offset(delta=-r) polygon(points=[[x1, -r-1], [x1, material_thickness], [x1-slide/2, material_thickness], [x1-slide,material_thickness+a], [x1-slide, material_thickness+t], [x2-slide, material_thickness+t], [x2-slide, -r-1]], convexity=4);
    }
  }
}

module hook_finger_negative(material_thickness, bit_size, events, slide=8, a=0.5, t=8) {
  for(i=[0:len(events)-1]) {
    if((events[i][0] == 1) && i < len(events)-1) { // begin notch
      // can we always ignore last one, or need to know width?
      translate([events[i][1]-bit_size/2,0]) circle(d=bit_size);
      translate([events[i][1],material_thickness-bit_size/2]) circle(d=bit_size);
    } else if(events[i][0] == 0 && i > 0) {
      translate([events[i][1]+bit_size/2-slide,0]) circle(d=bit_size);
    }
  }
}
