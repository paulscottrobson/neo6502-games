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

APPNAME = galaxians

SRCNAME = $(APPNAME)$(S)$(APPNAME).bsc
OBJNAME = $(APPNAME)$(S)$(APPNAME).bas

ALLAPPS = $(wildcard */*.bas)

all:

trun : build
	cd $(APPNAME) ; $(BINDIR)neo$(APPSTEM) $(BINDIR)basic.bin@800 $(APPNAME).bas@page  exec
	$(CDEL) memory.dump 

tneo : build
	$(CCOPY) $(APPNAME)$(S)$(APPNAME).bsc $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)test.bsc
	$(CCOPY) $(APPNAME)$(S)storage$(S)$(APPNAME).gfx $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)storage
	make -C $(ROOTDIR)$(S)neo6502-firmware$(S)basic tneo

build : $(OBJNAME)

release: $(ALLAPPS)
	$(CCOPY) games$(S)* $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)code$(S)games

cleargfx:
	cd $(APPNAME) ; $(PYTHON) $(BINDIR)createblanks.zip
	
always:

%.bas : %.bsc always
	$(PYTHON) $(BINDIR)makebasic.zip $< -o$@
	$(CMAKEDIR) storage
	$(CCOPY) $@ storage

	cd $(*F) ; $(PYTHON) $(BINDIR)makeimg.zip
	$(CMAKEDIR) $(*F)$(S)storage
	$(CCOPY) $(*F)$(S)graphics.gfx $(*F)$(S)storage$(S)$(*F).gfx
	$(CCOPY) $(*F)$(S)graphics.gfx games$(S)$(*F).gfx
	$(CCOPY) $(*F)$(S)$(*F).b* games
	$(CDEL) $(*F)$(S)graphics.gfx

