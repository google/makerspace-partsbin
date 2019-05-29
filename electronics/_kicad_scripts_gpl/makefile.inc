# -*- Makefile -*-
# Based on https://github.com/hzeller/ldgraphy/tree/master/pcb/kicad-scripts
# Added symlink and ability to run from other tree depths

%-fab.zip : %-fab.kicad_pcb
	python $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))/kicad-fab.py $<
	# Lines that start with '%TF' are "Gerber extensions" and are not
	# supported by some software (including the one that allpcb uses).
	# Be sure to test with both gerbv and gerbview for compatibility problems in
	# the future.
	sed -i '/^%TF/d' plot/*
	# Include a unique directory name so you can unzip lots of these at the
	# same path.
	[ -e $*_fab ] || ln -sf plot $*_fab
	zip -r $@ $*_fab/

%-fab.kicad_pcb : %.kicad_pcb
	# TODO: If the file doesn't have history, this is empty string which results
	# in an invalid board file and failure later on that doesn't fault the right
	# line.  Use quoted empty string?
	sed "s/%%gitversion%%/`git log --date=short --pretty=format:'%h@%cd' -n 1 $^`/" < $^ > $@

