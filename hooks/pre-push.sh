#!/bin/bash
cd $(realpath $(dirname $0)/..)
python electronics/_kicad_scripts_gpl/fix_relative_paths.py $(find . -name '*.pro' -o -name 'fp-lib-table' -o -name 'sym-lib-table')
