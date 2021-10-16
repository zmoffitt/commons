# Makefile
SHELL := /bin/bash

.PHONY: do_script

do_script:
	$(pwd)./fonts/installer.sh

prerequisites: do_script

target: prerequisites
