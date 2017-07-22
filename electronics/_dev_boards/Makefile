# This makes for inconsistently-colored board images, but it's better than
# nothing.  Eventually we should rework for generating svg, and manually
# coloring those via inkscape or so, like
# https://github.com/aktos-io/kicad-tools/blob/b25fc723b29324f0b12e2d01157d956ff8125f3c/plot-pcb.py

# TODO subshell to open the file once
README.md: */board.png
	echo "# Dev Boards" > README.md
	echo "" >> README.md
	ls -d */ | while read f; do \
	  if [ -e $$f/board.png ]; then \
	    echo "## $$f" >> README.md; \
	    echo "![$$f]($$f/board.png)" >> README.md; \
	    echo "" >> README.md; \
	  fi; \
	done

.PHONY: board_pngs
board_pngs:
	for f in `ls -d */`; do ( cd $$f; make && gerbv -x png --dpi 600 -o board.png $$(grep -l '^X' plot/*-fab-[0-9]*) 2> /dev/null ); done
