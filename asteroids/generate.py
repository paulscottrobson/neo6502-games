#
#		Graphic generator
#
import math,sys,random

class Sprite(object):
	def __init__(self):
		self.graphics = ["." * 32] * 32
		self.rot(0)
	#
	def set(self,x1,y1):
		x = x1 * self.cosine - y1 * self.sine
		y = y1 * self.cosine + x1 * self.sine
		x = round(x) + 16
		y = round(-y) + 16
		self.graphics[y] = self.graphics[y][:x]+"G"+self.graphics[y][x+1:]
		return self
	#
	def line(self,x1,y1,x2,y2):
		steps = round(math.sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)))
		steps = steps if steps > 0 else 1
		for i in range(0,steps+1):
			x = (x2-x1)*i/steps+x1
			y = (y2-y1)*i/steps+y1
			self.set(x,y)
		self.set(x1,y1)
		self.set(x2,y2)
		return self
	#
	def rot(self,r):
		self.rotate = r
		rads = -math.radians(r)
		self.sine = math.sin(rads)
		self.cosine = math.cos(rads)
		return self
	#
	def render(self,size):
		print("[]")
		if size == 32:
			print("\n".join(self.graphics))
		else:
			print("\n".join([x[8:24] for x in self.graphics[8:24]]))
		return self
	#
	def ship(self):
		self.line(0,7,-5,-5)
		self.line(0,7,5,-5)
		self.line(-4,-3,4,-3)
		return self
	#	
	def font(self,m):
		if (m & 1) != 0:
			self.vline(-2,4)
		if (m & 2) != 0:
			self.hline(-2,4)
		if (m & 4) != 0:
			self.vline(2,4)
		if (m & 8) != 0:
			self.vline(2,0)
		if (m & 16) != 0:
			self.hline(-2,-4)
		if (m & 32) != 0:
			self.vline(-2,0)
		if (m & 64) != 0:
			self.hline(-2,0)
		return self
	#
	def vline(self,x,y):
		for i in range(0,5):
			self.set(x,y-i)
	#
	def hline(self,x,y):
		for i in range(0,5):
			self.set(x+i,y)
	#
	def rock(self,r,type):
		random.seed(type)
		rMax = r
		angle = random.randint(10,30)
		first = self.getPos(angle,r)
		last = first
		while angle < 360:
			p = self.getPos(angle,r)
			self.line(last[0],last[1],p[0],p[1])
			angle += random.randint(10,30)
			last = p
		self.line(first[0],first[1],p[0],p[1])
		return self
	#
	def getPos(self,a,r):
		rr = (r >> 2)+1
		r = r - random.randint(0,rr)
		a = math.radians(a)
		return [ r * math.cos(a),r * math.sin(a) ]

print("[Sprite:16x16]")
for i in range(0,8):
	Sprite().rock(7,i).render(16)
for a in range(0,32):
	Sprite().rot(a * 360 / 32).ship().render(16)
for m in [0x3F,0x0C,0x76,0x5E,0x4D,0x5B,0x7B,0x0E,0x7F,0x5F]:
	Sprite().font(m).render(16)
Sprite().set(0,0).render(16)
Sprite().line(0,4,-3,-4).line(0,4,3,-4).line(-2,-2,2,-2).render(16)

print("[Sprite:32x32]")
for i in range(0,8):
	Sprite().rock(15,i+100).render(32)
