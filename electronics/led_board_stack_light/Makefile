include ../_kicad_scripts_gpl/makefile.inc

led_board-fab.zip:
%.eps: %.svg
	inkscape -E "$@" "$<"

%.dxf: %.eps
	pstoedit -dt -f dxf:-polyaslines\ -mm "$<" "$@"

stack.svg: led_board.kicad_pcb
	python2 ../_kicad_scripts_gpl/outline_extract.py "$<"
	python2 ../_kicad_scripts_gpl/board_outline_stitcher.py led_board-pcb.svg > stack.svg
