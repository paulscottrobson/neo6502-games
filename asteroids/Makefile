ifeq ($(OS),Windows_NT)
include ..\common.make
else
include ../common.make
endif

build: 
	python $(BINDIR)makebasic.zip $(SRCNAME) -o$(OBJNAME)
	python generate.py >asteroids.txt
	python $(BINDIR)cvimg.zip asteroids.txt asteroids.gfx
	$(CMAKEDIR) storage
	$(CCOPY) asteroids.gfx storage


