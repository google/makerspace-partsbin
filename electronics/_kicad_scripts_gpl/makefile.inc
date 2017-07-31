# -*- Makefile -*-
# Based on https://github.com/hzeller/ldgraphy/tree/master/pcb/kicad-scripts
# Added symlink and ability to run from other tree depths
# TODO: remove failure on uncommitted board files (sed replaces with empty
# string)

%-fab.zip : %-fab.kicad_pcb
	python2 $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))/kicad-fab.py $<
	# The program gerbv (and board house allpcb) complain about gerber extension
	# lines, which start with '%TF'.  It's in the standard, but I don't know any
	# good reason to keep them.
	sed -i '/^%TF/d' plot/*
	zip -r $@ plot/
	[[ -e $*_fab ]] || ln -sf plot $*_fab

%-fab.kicad_pcb : %.kicad_pcb
	sed "s/%%gitversion%%/`git log --date=short --pretty=format:'%h@%cd' -n 1 $^`/" < $^ > $@

