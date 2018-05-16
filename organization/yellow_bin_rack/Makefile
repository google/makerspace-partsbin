%.dxf: %.scad yellow_bin_rack.scad ../scad_lib/joinery.scad
	openscad -o $@ $<

.PHONY: all
all: top.dxf bottom.dxf side.dxf side_with_rails.dxf corner_pieces.dxf just_rails.dxf
