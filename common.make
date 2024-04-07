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
CCAT = cat
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

SRCNAME1 = $(wildcard *.bsc)
SRCNAME2 = $(wildcard *.lib)

SRCNAME = $(SRCNAME1) $(SRCNAME2)
OBJNAME = $(subst .bsc,.bas,$(SRCNAME1))
GFXNAME = $(subst .bsc,.gfx,$(SRCNAME1))

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
	$(CCAT) $(SRCNAME) >$(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)test.bsc
	$(CCOPY) storage$(S)*.* $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)storage
	make -C $(ROOTDIR)$(S)neo6502-firmware$(S)basic tneo

release: 
	$(CCOPY) *.bas *.bsc *.gfx *.dat *.lib $(ROOTDIR)neo6502-firmware$(S)examples$(S)basic$(S)games || true
	$(CCOPY) *.bas *.bsc *.gfx *.dat *.lib $(ROOTDIR)neo6502-firmware$(S)basic$(S)storage || true
	$(CCOPY) *.bas *.bsc *.gfx *.dat *.lib $(ROOTDIR)neo6502-firmware$(S)emulator$(S)storage || true

cleargfx:
	$(PYTHON) $(BINDIR)createblanks.zip
	
update:
	cd .. ; git add * ; git add * -u ; git commit -m "Update" ; git push origin main
