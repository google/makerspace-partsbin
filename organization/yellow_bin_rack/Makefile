%.dxf: %.scad yellow_bin_rack.scad ../scad_lib/joinery.scad
	openscad -o $@ $<

.PHONY: all
all: top.dxf bottom.dxf side.dxf corner_pieces.dxf
