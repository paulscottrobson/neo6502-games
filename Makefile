# ***************************************************************************************
# ***************************************************************************************
#
#		Name : 		Makefile
#		Author :	Paul Robson (paul@robsons.org.uk)
#		Date : 		3rd March 2024
#		Reviewed :	No
#		Purpose :	Graphics build
#
# ***************************************************************************************
# ***************************************************************************************

all: 
	rm ../neo6502-firmware/examples/basic/games/*
	make -B -C breakout
	make -B -C frogger
	make -B -C galaxians
	make -B -C invaders
	make -B -C numbergrab
	make -B -C squash
