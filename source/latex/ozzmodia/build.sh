#!/bin/sh

# openout_any=a - write to diretories that are not children of .
# --shell-escape - allow latex to execute shell commands. this is used to makedir -p necessary directories
openout_any=a latex --shell-escape ozzmodia.ins

# build documentation
latexmk ozzmodia.dtx
