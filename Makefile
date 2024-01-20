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

all:

trun : build
	cd $(APPNAME) ; $(BINDIR)neo$(APPSTEM) $(BINDIR)basic.bin@800 $(APPNAME).bas@page  exec
	$(CDEL) memory.dump 

tneo : build
	$(CCOPY) $(APPNAME)$(S)$(APPNAME).bsc $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)test.bsc
	$(CCOPY) $(APPNAME)$(S)storage$(S)$(APPNAME).gfx $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)storage
	make -C $(ROOTDIR)$(S)neo6502-firmware$(S)basic tneo

build : $(OBJNAME)
	cd $(APPNAME) ; $(PYTHON) $(BINDIR)makeimg.zip
	$(CMAKEDIR) $(APPNAME)$(S)storage
	$(CCOPY) $(APPNAME)$(S)graphics.gfx $(APPNAME)$(S)storage$(S)$(APPNAME).gfx
	$(CCOPY) $(APPNAME)$(S)graphics.gfx games$(S)$(APPNAME).gfx
	$(CCOPY) $(APPNAME)$(S)$(APPNAME).b* games
	$(CDEL) $(APPNAME)$(S)graphics.gfx

update:
	$(CCOPY) games$(S)* $(ROOTDIR)$(S)neo6502-firmware$(S)basic$(S)code$(S)games

cleargfx:
	cd $(APPNAME) ; $(PYTHON) $(BINDIR)createblanks.zip
	
%.bas : %.bsc
	$(PYTHON) $(BINDIR)makebasic.zip $< -o$@
	$(CMAKEDIR) storage
	$(CCOPY) $@ storage

