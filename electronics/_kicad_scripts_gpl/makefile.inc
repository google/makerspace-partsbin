# -*- Makefile -*-
# Based on https://github.com/hzeller/ldgraphy/tree/master/pcb/kicad-scripts
# Added symlink and ability to run from other tree depths
# TODO: remove failure on uncommitted board files (sed replaces with empty
# string)

%-fab.zip : %-fab.kicad_pcb
	python2 $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))/kicad-fab.py $<
	# TODO remove extensions for compat with allpcb (one of gerbview,gerbv also complains)
	zip -r $@ plot/
	ln -sf plot $*_fab || true

%-fab.kicad_pcb : %.kicad_pcb
	sed "s/%%gitversion%%/`git log --date=short --pretty=format:'%h@%cd' -n 1 $^`/" < $^ > $@

