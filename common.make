# ***************************************************************************************
# ***************************************************************************************
#
#		Name : 		common.make
#		Author :	Paul Robson (paul@robsons.org.uk)
#		Date : 		3rd March 2024
#		Reviewed :	No
#		Purpose :	Game build.
#
# ***************************************************************************************
# ***************************************************************************************


ifeq ($(OS),Windows_NT)
CCOPY = copy
CMAKE = make
CDEL = del /Q
CDELQ = >NUL
CMAKEDIR = md
APPSTEM = .exe
S = \\
PYTHON = c:\Python312\python.exe
else
CCOPY = cp
CCOPYREC = cp -r
CDEL = rm -f
CDELQ = 
CMAKEDIR = mkdir -p 
APPSTEM =
S = /
OSNAME = linux
PYTHON = python3
endif

ROOTDIR =  $(dir $(realpath $(lastword $(MAKEFILE_LIST))))..$(S)
BINDIR = $(ROOTDIR)$(S)neo6502-firmware$(S)bin$(S)

SRCNAME = $(wildcard *.bsc)
OBJNAME = $(subst .bsc,.bas,$(SRCNAME))
GFXNAME = $(subst .bsc,.gfx,$(SRCNAME))

APPFILES = $(SRCNAME) $(OBJNAME) $(GFXNAME)

all: build release

%.bas : %.bsc
	$(PYTHON) $(BINDIR)makebasic.zip $< -o$@

%.gfx : sprite_16.png sprite_32.png tile_16.png
	$(PYTHON) $(BINDIR)makeimg.zip	
	$(CCOPY) graphics.gfx $(GFXNAME)
	$(CMAKEDIR) storage
	$(CCOPY) graphics.gfx storage$(S)$(GFXNAME)
	$(CDEL) graphics.gfx 

trun : build
	$(BINDIR)neo$(APPSTEM) $(BINDIR)basic.bin@800 $(OBJNAME)@page exec
	$(CDEL) memory.dump 

tneo : build
	$(CCOPY) $(SRCNAME) $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)test.bsc
	$(CCOPY) storage$(S)$(GFXNAME) $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)storage
	make -C $(ROOTDIR)$(S)neo6502-firmware$(S)basic tneo

release: 
	$(CCOPY) $(APPFILES) $(ROOTDIR)neo6502-firmware$(S)examples$(S)basic$(S)games
	$(CCOPY) $(APPFILES) $(ROOTDIR)neo6502-firmware$(S)basic$(S)storage
	$(CCOPY) $(APPFILES)  $(ROOTDIR)neo6502-firmware$(S)emulator$(S)storage

cleargfx:
	$(PYTHON) $(BINDIR)createblanks.zip
	

