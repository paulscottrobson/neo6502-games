# ***************************************************************************************
# ***************************************************************************************
#
#		Name : 		Makefile
#		Author :	Paul Robson (paul@robsons.org.uk)
#		Date : 		30th January 2024
#		Reviewed :	No
#		Purpose :	Graphics build
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

APPNAME = frogger

SRCNAME = $(APPNAME)$(S)$(APPNAME).bsc
OBJNAME = $(APPNAME)$(S)$(APPNAME).bas
GFXNAME = $(APPNAME)$(S)$(APPNAME).gfx

ALLAPPS = $(wildcard */*.bas)
ALLSRC = $(wildcard */*.bsc)
ALLGFX = $(wildcard */*.gfx */*/*.gfx)

all: release

trun : build
	cd $(APPNAME) ; $(BINDIR)neo$(APPSTEM) $(BINDIR)basic.bin@800 $(APPNAME).bas@page  exec
	$(CDEL) memory.dump 

tneo : build
	$(CCOPY) $(APPNAME)$(S)$(APPNAME).bsc $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)test.bsc
	$(CCOPY) $(APPNAME)$(S)storage$(S)$(APPNAME).gfx $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)storage
	make -C $(ROOTDIR)$(S)neo6502-firmware$(S)basic tneo

build : $(OBJNAME)

release: 
	make -B $(ALLAPPS)
	$(CDEL) $(ROOTDIR)neo6502-firmware$(S)examples$(S)code$(S)games$(S)*.*
	$(CCOPY) $(ALLAPPS) $(ALLSRC) $(ALLGFX) $(ROOTDIR)neo6502-firmware$(S)examples$(S)basic$(S)games
	$(CCOPY) $(ALLAPPS) $(ALLSRC) $(ALLGFX) $(ROOTDIR)neo6502-firmware$(S)basic$(S)storage
	$(CCOPY) $(ALLAPPS) $(ALLSRC) $(ALLGFX) $(ROOTDIR)neo6502-firmware$(S)emulator$(S)storage

cleargfx:
	cd $(APPNAME) ; $(PYTHON) $(BINDIR)createblanks.zip
	

%.bas : %.bsc
	$(PYTHON) $(BINDIR)makebasic.zip $< -o$@
	$(CDEL) $(F)$(S)*.gfx
	$(CDEL) $(F)$(S)storage$(S)*.gfx
	cd $(*F) ; $(PYTHON) $(BINDIR)makeimg.zip
	$(CMAKEDIR) storage
	$(CCOPY) $(*F)$(S)graphics.gfx $(*F)$(S)storage$(S)$(*F).gfx
	$(CDEL) $(*F)$(S)graphics.gfx



