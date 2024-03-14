'	"***********************"
'	"(Not) Atic Atac"
'	"***********************"
'
map.size = 10:call create.game()
player.speed = 3:safety.off = true
repeat
	call do.room()
until lives = 0 or jewels = 3
end
;
;		Do one room. Exit if life lost or left room
;
proc do.room()
	!&FFFD=0
	if door$(room.x,room.y) = "" then call initialise.room(room.x,room.y)
	call unpack.current():call draw.room(1)
	call reset.monsters():call reset.missile()
	if abs(player.y-120) < door.width
		player.x = 128+sgn(player.x-128)*(x.width-1)
	else
		player.y = 120+sgn(player.y-120)*(y.height-1)
	endif
	sprite 0 to player.x,player.y ink 1 draw 0	
	!&FFFD=0
	e.doorOC = 0:e.pMove = 0:e.mMove = 0:left.room = false:doorOCtime = random(200,400)
	repeat
		if event(e.pMove,7) then call move.player()
		if event(e.mMove,6) then call move.missile()
		if event(e.doorOC,doorOCtime) then call door.open.close()
		call move.monsters()
	until left.room or energy = 0 or jewels = 3
	call remove.monsters()
	if energy = 0
		 lives = lives-1:energy = 1000:player.x = 128:player.y = 120
		 call update.energy():call update.lives()
	endif
endproc
;
;		Move the Player
;
proc move.player()
	local x,y,dx,dy,s:allow = true
	x = joyx()*player.speed:y = joyy()*player.speed
	if x <> 0 or y <> 0 then player.dx = x:player.dy = y
	x = x + player.x:y = y+player.y
	dx = abs(x-128):dy = abs(y-120)
	if dx > x.width then allow = false:if dy < door.width then call check.exit(x,y)
	if dy > y.height then allow = false:if dx < door.width then call check.exit(x,y)
	if x<>player.x or y<>player.y 
		sprite 0 draw timer() and 8
		mvc = mvc+1:if (mvc and 3) = 0 then sound 1,20000/((mvc >> 1 and 2)+1),1
	endif
	if allow then sprite 0 to x,y:player.x = x:player.y = y
	x = joyx():if x then sprite 0 flip 1-x
	if hit(0,2) then call collect.object()
endproc
;
;		Collect an object
;
proc collect.object()
	if contents$(room.x,room.y) <> "K" or keys <> 3
		if contents$(room.x,room.y) = "K" then keys = keys+1:call update.keys()
		if contents$(room.x,room.y) = "J" then jewels = jewels+1:call update.jewels()
		if contents$(room.x,room.y) = "P" then energy = min(1000,energy+random(200,400)):call update.energy()		
		contents$(room.x,room.y) = "":sprite 2 end
		sound 2,22222,0:slide 2,2000,2
	endif
endproc
;
;		Move the missile
;
proc move.missile()
	if m.active
		if timer() < m.endTime 
			m.x = m.x+m.xi:m.y = m.y+m.yi
			if abs(m.x-128) >= x.width then m.xi = -m.xi
			if abs(m.y-120) >= y.height then m.yi = -m.yi
			sprite 1 to m.x,m.y ink 3 flip random(0,3) draw random(16,17)
		else
			call reset.missile()
		endif
	else
		if joyb(1)
			m.active = true
			m.x = player.x:m.y = player.y:m.xi = player.dx*2:m.yi = player.dy*2
			m.endTime = timer()+250
			sound 0,1000,4
		endif
	endif
endproc
;
;		Reset the missile
;
proc reset.missile()
	m.x = 0:m.y = 0:m.active = false:m.xi = 0:m.yi = 0:sprite 1 end
endproc
;
;		Check exit when at x,y
;
proc check.exit(x,y)
	local d
	if dx >= x.width
		d = 3:if x > 128 then d = 1
	else
		d = 0:if y > 120 then d = 2
	endif
	left.room = (exit(d,1) <> 8) and (exit(d,1) <> 0)
	if exit(d,1) = 2 or exit(d,1) = 5 then left.room = (exit(d,2) = 2)
	if exit(d,1) = 3 or exit(d,1) = 6
		left.room = False
		if keys > 0 then keys = keys-1:call update.keys():call unlock.door(x,y,d):left.room = True
	endif
	if left.room
		if dx >= x.width
			player.x = 255-player.x
			room.x = room.x + sgn(x-128)
		else
			player.y = 239-player.y
			room.y = room.y + sgn(y-120)
		endif
	endif
endproc
;
;		Move monsters
;
proc move.monsters()
	local i,s
	for i = 1 to m.count
		if timer() > m.ev(i) 
			s = m.stat(i)
			if s = 0 then m.stat(i) = 1:m.ev(i) = timer()+80:sprite m.spr(i) to m.x(i),m.y(i) ink random(1,3) draw 16
			if s = 1 then call promote.monster(i):m.stat(i) = 2
			if s = 2 then call move.monster(i)
		endif
		if m.stat(i) = 1 then sprite m.spr(i) draw random(16,17) flip random(0,3)
	next i
endproc
;
;		Move monster
;
proc move.monster(n)
	local f
	m.ev(i) = timer()+m.spd(i)
	m.x(i) = m.x(i)+m.xi(i):m.y(i) = m.y(i)+m.yi(i)
	if abs(m.x(i)-128) > x.width then m.xi(i) = -m.xi(i)
	if abs(m.y(i)-120) > y.height then m.yi(i) = -m.yi(i)
	if random(0,m.tgt(i)) = 0 then call retarget.monster(i)
	f = 0::if m.xi(i) < 0 then f = 2
	sprite m.spr(i) to m.x(i),m.y(i) flip f
	if hit(m.spr(i),1,10) then call reset.missile():if not m.inv(i) then call hit.monster(i)
	if hit(m.spr(i),0,10) and safety.off
		energy = energy - 15
		if not m.inv(i) then call reset.one.monster(i):energy = energy-50
		energy = max(energy,0)
		call update.energy()
	endif
endproc
;
;		Monster hit
;
proc hit.monster(i)
	sound 2,4444,0:slide 1,-4000,2
	score = score+10
	call update.score()
	call reset.one.monster(i)
endproc
;
;		Make sprite 'real'
;
proc promote.monster(i)
	local n = random(1,5)
	sprite m.spr(i) draw n+20 flip 0
	m.ev(i) = timer():m.inv(i) = 0:m.tgt(i) = 20:m.spd(i) = 8
	rem "Wizard, Skeleton, Ghost, Bat Head"
	if n = 1 then m.tgt(i) = 10
	if n = 2 then m.tgt(i) = 999:m.spd(i) = 6
	if n = 3 then m.inv(i) = 1:m.spd(i) = 12
	if n = 4 then m.tgt(i) = 10:m.spd(i) = 6
	if n = 5 then m.inv(i) = 2:m.tgt(i) = 0:m.spd(i) = 16
	call retarget.monster(i)
endproc
;
;		Retarget sprite
;
proc retarget.monster(i)
	m.xi(i) = sgn(player.x-m.x(i))
	m.yi(i) = sgn(player.y-m.y(i))
endproc
;
;		Initialise a room
;
proc initialise.room(x,y)
	local a$,x1,y1,dx,dy,i,f,n
	for i = 0 to 3
		call get.dxdy(i):a$ = "00":x1 = x+dx:y1 = y + dy
		if x1 > 0 and y1 > 0 and x1 <= map.size and y1 <= map.size 
			n = random(1,8):if random(0,9) < 4 then n = 0
			a$ = str$(random(1,3))+str$(n)
			if door$(x1,y1) <> ""
				f = i xor 2
				a$ = mid$(door$(x1,y1),f*2+1,2)
			endif
		endif
		door$(room.x,room.y) = door$(room.x,room.y)+a$
	next i
	size(x,y) = random(1,3):type(x,y) = random(1,2)
endproc
;
;		Get dx,dy for direction i
;
proc get.dxdy(i)
	dx = 0:dy = 0
	if i = 0 then dy = -1
	if i = 1 then dx = 1
	if i = 2 then dy = 1
	if i = 3 then dx = -1
endproc
;
;		Initialise the game
;
proc create.game()
	local i,n,x,y
	cls:screen 2,2:palette 1,1,6:ink 3:frame 256,0 to 319,239
	room.size = 32:door.width = 14:player.speed = 3:safety.off = True
	sprite load "aticatac.spr"
	dim door$(map.size,map.size):rem "col/type x 4 NESW"
	dim size(map.size,map.size):rem "1 = 1x2,2 = 2x1,3 = 2x2"
	dim type(map.size,map.size):rem "0 = New,1 = Cave, 2 = Room"
	dim contents$(map.size,map.size):rem "K J P X or ''"
	dim exit(3,2):rem "NSEW exit. 0 = exit colour,1=exit type (0 = shut),2 auto door,0 no 1 open 2 closed"	
	player.x = 128:player.y = 120:room.x = (map.size+1)/2:room.y = room.x
	player.dx = 3:player.dy = 0
	;
	door$(room.x,room.y) = "14243424":size(room.x,room.y) = 3:type(room.x,room.y) = 2
	;
	m.max = 5:m = 5
	dim m.stat(m):rem "0 not present 1 materialising 2 active"
	dim m.x(m),m.xi(m),m.y(m),m.yi(m):rem "Position/direction"
	dim m.spr(m),m.ev(m),m.spd(m),m.tgt(m),m.inv(m):rem "Sprite, next event, speed, retarget chance,invulnerable"
	;
	contents$(1,1) = "X":contents$(1,map.size) = "X"
	contents$(map.size,1) = "X":contents$(map.size,map.size) = "X"
	contents$(room.x,room.y) = "X"
	for i = 1 to 3
		repeat
			x = random(1,map.size):y = random(1,map.size)
		until contents$(x,y) = ""
		contents$(x,y) = "J"
	next i
	for x = 1 to map.size
		for y = 1 to map.size
			if contents$(x,y) <> "J"
				contents$(x,y) = mid$("PK",random(1,3),1)
			endif
		next y
	next x
	;
	score = 0:lives = 3:energy = 1000:keys = 1:jewels = 0
	ink 2:text 288-16,8,"Score":text 288-20,32,"Energy":ink 3:frame 264,44 to 312,60
	call update.score():call update.energy():call update.lives():call update.keys():call update.jewels()
	ink 2:frame 260,130 to 316,160
endproc
;
;		Unlock door direction d room x,y
;
proc unlock.door(x,y,d)
	local dx,dy,a$:a$ = str$(val(mid$(door$(room.x,room.y),d*2+2,1))-2)
	local p = d*2+2
	door$(room.x,room.y) = left$(door$(room.x,room.y),p-1)+a$+mid$(door$(room.x,room.y),p+1)
	local p = (d xor 2)*2+2:call get.dxdy(d)
	door$(room.x+dx,room.y+dy) = left$(door$(room.x+dx,room.y+dy),p-1)+a$+mid$(door$(room.x+dx,room.y+dy),p+1)
endproc
;
;		Unpack current room doors
;
proc unpack.current()
	local i,a$
	for i = 0 to 3
		a$ = mid$(door$(room.x,room.y),i*2+1,2)
		exit(i,0) = val(mid$(a$,1,1))
		exit(i,1) = val(mid$(a$,2,1))
		exit(i,2) = 0
		if exit(i,1) = 2 or exit(i,1) = 5 then exit(i,2) = 2
	next i
	x.Scale = size(room.x,room.y):y.Scale = 3-x.Scale
	if size(room.x,room.y) >= 3 then x.scale = 2:y.scale = 2
	x.width = room.size*x.scale:y.height = room.size*y.scale
endproc
;
;		Toggle open/close doors
;
proc door.open.close()
	local i
	for i = 0 to 3
		if exit(i,2) <> 0
			call draw.door(i,exit(i,1),0)	
			exit(i,2) = 3 - exit(i,2)
			call draw.door(i,exit(i,1)+1-exit(i,2),exit(i,0) mod 8)	
		endif
	next i
endproc
;
;		Reset monsters
;
proc reset.monsters()
	local i
	m.count = random(2,3):if size(room.x,room.y) = 3 then m.count = random(3,5)
	for i = 1 to m.count:call reset.one.monster(i):next i
endproc
;
;		Remove all monsters
;
proc remove.monsters()
	local i
	for i = 1 to m.count:sprite m.spr(i) end:next i
endproc
;
;		Reset one monsters
;
proc reset.one.monster(i)
	m.stat(i) = 0:m.x(i) = random(128-x.width,128+x.width):m.y(i) = random(120-y.height,120+y.height)
	m.spr(i) = i + 4:m.ev(i) = random(10,200)+timer():sprite m.spr(i) end
endproc
;
;		Draw a room in current scale and givn style
;
proc draw.room(type)
	local x.scale1 = x.scale*10:if x.scale1 = 10 then x.scale1 = 13
	local y.scale1 = y.scale*10:if y.scale1 = 10 then y.scale1 = 13
	ink 0:rect 0,0 to 255,239:palette 3,0,7
		local cx,cy:cx = 128:cy = 120+58*y.scale:ink 3
	if type = 1
		cy = 128+52*y.scale
		call line(12,56):call line(24,49):call line(40,57)
		call line(52,52):call line(47,35):call line(55,15)
		call line(50,0)
	else
		call line(45,58):call line(58,45):call line(58,0)
	endif
	ink 0:rect 128-room.size*x.scale,120-room.size*y.scale to 128+room.size*x.scale,120+room.size*y.scale
	ink 3:frame 128-room.size*x.scale,120-room.size*y.scale to 128+room.size*x.scale,120+room.size*y.scale
	;
	local i
	for i = 0 to 3
		if exit(i,1) <> 0 then call draw.door(i,exit(i,1),exit(i,0) mod 8)
	next i
	sprite 2 end
	if contents$(room.x,room.y) <> ""
		i = 18:if contents$(room.x,room.y) = "P" then i = 19
		if contents$(room.x,room.y) = "J" then i = 20
		sprite 2 to random(128-x.width,128+x.width),random(120-y.height,120+y.height) ink (room.x+room.y*7) mod 3+1 draw i
	endif
	call large("Not",170,2):call large("Atic",190,3):call large("Atac",210,1)
	ink 2:frame 260,130 to 316,160
	sprite 3 draw 26 ink 3 to 56*(room.x-1)/map.size+260,30*(room.y-1)/map.size+130
endproc
;
;		Draw one door
;
proc draw.door(door,gfx,col)
	local x = 128-16:local y = 120-16:local bflip = 0
	if gfx > 7 then gfx=7
	if door = 0 then y = y - room.size*y.Scale-16
	if door = 1 then x = room.size*x.Scale+129:gfx = gfx+8
	if door = 2 then y = room.size*y.Scale+121:bflip = &6000
	if door = 3 then x = x - room.size*x.scale-16:gfx = gfx+8:bflip = &6000
	blit x,y,sysvar(3)+gfx*16,&0300+col,&1010+bflip
endproc
;
;		Line drawer, support routine for room draw, draws in four quadrants
;
proc line(x,y)
	local x1,y1:x1 = x*x.scale1/10+128:y1 = y*y.scale1/10+120
	if y <> 0
		line 128,120 to x1,y1:line 128,120 to 256-x1,y1
		line 128,239-120 to x1,239-y1:line 128,239-120 to 256-x1,239-y1
	endif
	line cx,cy to x1,y1:line 256-cx,cy to 256-x1,y1
	line cx,239-cy to x1,239-y1:line 256-cx,239-cy to 256-x1,239-y1
	cx = x1:cy = y1
endproc
;
;		Update Score
;
proc update.score()
	ink 3:cursor 45,2:print right$("00000"+str$(score),5);"0";
endproc
;
;		Update energy
;
proc update.energy()
	local x = energy/2*46/500
	ink 0:rect 265+x,45 to 311,59
	ink 1:rect 265,45 to 265+x,59
endproc
;
;		Update lives etc.
;
proc update.lives():call update.display(lives,68,0):endproc
proc update.keys():call update.display(keys,88,18):endproc
proc update.jewels():call update.display(jewels,108,20):endproc
;
proc update.display(n,y,g)
	local i
	for i = 1 to 3
		ink 1:if n >= i then ink 3
		draw 288+(i-2)*18-8,y,g
	next i
endproc
;
proc large(a$,y,c)
	ink c:text 288-len(a$)*6,y,a$,2
endproc