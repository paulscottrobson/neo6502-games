import os,re,sys,random

#################################################################################
#
#	bit 0..2 exit right 		wall key1 key2 key3 open tmr1 tmr2 tmr3
#	bit 3..5 exit down
#	bit 6 						pit/ladder present
#	bit 7 						object present.
#
#################################################################################

class Map(object):
	def __init__(self,size,levels):
		self.map = [ 0 ] * size * size * levels 
		self.size = size
		random.seed(42)

		for self.level in range(0,levels):
			for x in range(0,self.size):
				for y in range(0,self.size):
					self.create(x,y)
			self.frame()

		self.openStart()
		open("aticatac.dat","wb").write(bytearray(self.map))

	def create(self,x,y):
		b = self.newDoor()+(self.newDoor() << 3)
		b = b + (0x40 if random.randint(0,4) == 0 else 0x00)
		b = b + (0x80 if random.randint(0,2) == 0 else 0x00)
		self.write(x,y,b)

	def newDoor(self):
		b = 0
		if random.randint(0,100) < 66:
			if random.randint(0,100) < 40:
				b = 4
			else:
				b = random.randint(1,3)
				b = b + (4 if random.randint(0,100) < 33 else 0)
		return b

	def frame(self):
		for i in range(0,self.size):
			self.write(0,i,self.read(0,i) & 0xF8)
			self.write(self.size-1,i,self.read(self.size-1,i) & 0xF8)
			self.write(i,0,self.read(i,0) & 0xE3)
			self.write(i,self.size-1,self.read(i,self.size-1) & 0xE3)

	def openStart(self):
		self.level = 0 
		self.write(4,4,0x04 | 0x20)
		self.write(3,4,self.read(3,4) & 0xF8 | 0x04 )
		self.write(4,3,self.read(4,3) & 0xC7 | 0x20)

	def read(self,x,y):
		return self.map[x + y * self.size + self.level * self.size * self.size]
	def write(self,x,y,d):
		self.map[x + y * self.size + self.level * self.size * self.size] = d

Map(12,5)
