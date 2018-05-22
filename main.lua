local wndW,wndH=love.window.getMode()
fb=require 'fblove_strip'(wndW,wndH) 
fb.setbg(0xFFaaaaaa) -- ARGB
local rol,lshift,ror,rshift=bit.rol,bit.lshift,bit.ror,bit.rshift
local rnd=math.random
local function draw()
for y=wndH-50,wndH-10 do for x=50,100 do fb.buf[y][x]=0xFF00FF00 end end --green quad

for y=0,wndH/4 do local noise=rnd(255)  for x=0,wndW-1 do  --  wndW-1 и wndH-1

fb.bufrgba[y][x].r=ror(rol(noise,x*y),lshift(y,x)) 
fb.bufrgba[y][x].g=ror(rol(noise,x*y),lshift(y,x)) 
fb.bufrgba[y][x].b=ror(rol(noise,x*y),lshift(y,x))  
end end

	for y=wndH-1,wndH/4,-1 do
		for x=wndW-1,wndW/4,-1 do
			fb.bufrgba[y][x].r=y%255
			fb.bufrgba[y][x].g=(x*y)%255
			fb.bufrgba[y][x].b=(255-y)%255
			fb.bufrgba[y][x].a=255
		end
	end
end

--fb.buf[y][x] = 0xFF00FF00  ARGB 
--fb.bufrgba[y][x].r = 255
-- its  table of pointers to  single imagedata


function love.draw()
	fb.fill() -- fb.fill(0xFFaa00aa) work  slower
	draw()
	fb.refresh() --   image:refresh()
	fb.draw(0,0,1) 

	fps=math.floor(1/love.timer.getAverageDelta())
	--love.graphics.print('fps: '..fps,wndW-120,0)
	love.window.setTitle(wndW..'x'..wndH..' fps '..fps)
end

function love.resize(w,h)
wndW,wndH=w,h  

love.window.setTitle(wndW..'x'..wndH..' scale ')	
 fb.reinit(wndW,wndH) 

end