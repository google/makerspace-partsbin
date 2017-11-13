#!/bin/bash

set -eu

cd "$(dirname $0)"

./_kicad_scripts_gpl/fix_relative_paths.py $(find . -name '*.pro' -o -name 'fp-lib-table') "$@"
