#! /usr/bin/bash

# $1 = nome do programa (sem extensão)
set -x
emcc $1.c -o $1.js -sEXPORTED_FUNCTIONS=_process_command -sEXPORTED_RUNTIME_METHODS=ccall,cwrap
