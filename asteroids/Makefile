ifeq ($(OS),Windows_NT)
include ..\common.make
else
include ../common.make
endif

build: 
	$(PYTHON) $(BINDIR)makebasic.zip $(SRCNAME) -o$(OBJNAME)
	$(PYTHON) generate.py >asteroids.txt
	$(PYTHON) $(BINDIR)cvimg.zip asteroids.txt asteroids.gfx
	$(CMAKEDIR) storage
	$(CCOPY) asteroids.gfx storage


