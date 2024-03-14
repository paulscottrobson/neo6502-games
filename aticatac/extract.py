from PIL import Image
import os,re,sys

class Extractor(object):
	def __init__(self):
		elements = [x.strip() for x in self.getData().split("\n") if not x.strip().startswith("//")]
		elements = " ".join(elements).lower().replace("\t"," ").split()
		self.currentColours = None 
		self.currentImage = None 
		self.imageCount = 0
		self.alignment = "C"
		self.target = Image.open("blank.png")
		for e in elements:
			if e.startswith("@"):
				self.currentImage = Image.open(e[1:])
			elif e.startswith("."):
				self.processCommand(e)
			else:
				if self.currentColours is None:
					self.renderImage(e,None)
				else:
					for c in self.currentColours:
						self.renderImage(e,c)
		self.target.save("sprite_32.png")

	def renderImage(self,desc,paint):		
		if desc.startswith("!"):
			self.renderOne(desc[1:],paint,True)
		else:
			self.renderOne(desc,paint,False)

	def renderOne(self,desc,paint,rotate):
		desc = [int(x) for x in desc.strip().split(",")]
		img = self.getImage([desc[0],desc[1]],rotate)
		self.copyImage(img,paint,self.alignment,rotate)
		self.imageCount += 1

	def getImage(self,p,rotate):
		topLeft = [p[0],p[1]]
		col = self.currentImage.getpixel(p)
		while self.currentImage.getpixel([p[0]+1,p[1]]) == col:
			p[0] += 1
		while self.currentImage.getpixel([p[0],p[1]+1]) == col:
			p[1] += 1
		subImage = self.currentImage.crop(box = (topLeft[0]+1,topLeft[1]+1,p[0]-1,p[1]-1))
		if rotate:
			subImage = subImage.rotate(-90,expand=True)
		assert subImage.size[0] <= 32 and subImage.size[1] <= 32
		return subImage

	def processCommand(self,c):
		if c == ".bottom":
			self.alignment = "B"
		elif c == ".centre":
			self.alignment = "C"
		elif c.startswith(".colour"):
			self.currentColours = [int(s) for s in c[7:].strip().split(",") if s != ""]
		else:
			assert False,"Unknown command"

	def copyImage(self,image,colour,alignment,rotate):
		xStart = (self.imageCount & 7) * 40 + 8
		yStart = (self.imageCount >> 3) * 40 + 24 
		xOffset = 16 - image.size[0]//2
		yOffset = 16 - image.size[1]//2
		if alignment == "B":
			if rotate:
				xOffset = 0
			else:
				yOffset = 32-image.size[1]

		for x in range(0,image.size[0]):
			for y in range(0,image.size[1]):
				col = image.getpixel((x,y))				
				if col != 0:
					col = 7	if col == 3 else col
					col = 6 if col == 1 else col
					if colour is not None:
						col = colour
						r = 255 if (col & 1) else 0
						g = 255 if (col & 2) else 0
						b = 255 if (col & 4) else 0
					else:
						r = 255 if (col & 4) else 0
						g = 255 if (col & 2) else 0
						b = 255 if (col & 1) else 0
						if col == 5:
							r = 255
							g = 128
							b = 0
					self.target.putpixel((x+xStart+xOffset,y+yStart+yOffset),(r,g,b))

	def getData(self): return """
								@background.bmp
								.bottom
								// Cave openings unlocked, 3 locked.
									2,1 285,1 321,1 357,1
									!2,1 !285,1 !321,1 !357,1
								// Doors unlocked, 3 locked
									37,1 141,1 177,1 213,1
									!37,1 !141,1 !177,1 !213,1
								// Wall Decorations
									477,37 429,1 
									!477,37 !429,1 
								.centre
								// Grate in floor
									313,37
								// Stairs
									233,37

								@sprites.bmp
								.centre
								// Player
								.colour,3	81,23 121,23
								// Missile
								.colour,7	101,69 121,69
								// Keys
								.colour,1,3,6 1,200

								// Baddies
								.colour,1,3,6
									241,93 261,93 221,120 261,120 109,144
								// Collectibles
								.colour,3 	41,120 
								.colour,6 	61,120
								.colour,2 	81,120
							"""	

Extractor()							