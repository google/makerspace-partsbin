.PHONY: check
check:
	ls *.lib | sed -e 's/\.lib//g' -e 's/_/\\\\\\\\_/g' | while read f; do grep -q '^'$$f README.md || echo "Missing $$f"; done
