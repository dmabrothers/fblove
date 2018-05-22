fbLove
---

 Love2d library for software rendering

**Features**

- Uses love.image like a framebuffer
- It fast.
- Can change resolution on the fly
- Provides classical ways to crashing program, like this for example ```lua  buf[0][-1]=0xDEADBEEF ```
- Love-11.1.0

How it works
---
todo

Example
---

```lua
local wndW,wndH=love.window.getMode()
fb=require 'fblove_strip'(wndW,wndH)

function love.draw()
	for i=0,(wndW*wndH)-1 do color=fb.buf[0][i] fb.buf[0][i]=0xFF5F5F5F*i end
	fb.refresh()
	fb.draw(0,0,1)
end
```
![image](https://raw.githubusercontent.com/dmabrothers/fblove/master/screenshots/example1.PNG)

Let's make this resizible
```lua
love.window.setMode(800, 600, {resizable=true, vsync=false, minwidth=320, minheight=200})
local wndW,wndH=love.window.getMode()
fb=require 'fblove_strip'(wndW,wndH)

function love.draw()
	for i=0,(wndW*wndH)-1 do color=fb.buf[0][i] fb.buf[0][i]=0xFF5F5F5F*i end
	fb.refresh()
	fb.draw(0,0,1)
end

function love.resize(w,h)
 wndW,wndH=w,h  
 fb.reinit(wndW,wndH)
end 
```
![image](https://raw.githubusercontent.com/dmabrothers/fblove/master/screenshots/exambple1.1.PNG)

Let's parse triss.obj file and try rendered it ;)
```lua
function loadobj(file)
	obj.x={} obj.y={} obj.z={} obj.vnx={} obj.vny={} obj.vnz={} obj.vtu={} obj.vtv={} obj.vtw={}
	obj.fv1={} obj.fvt1={} obj.fvn1={} 
	obj.fv2={} obj.fvt2={} obj.fvn2={} 
	obj.fv3={} obj.fvt3={} obj.fvn3={} 
	obj.k={}
	obj2.vnx={} obj2.vny={} obj2.vnz={} obj2.x={} obj2.y={} obj2.z={}
	file:open('r')
	for str in file:lines() do
		
		if str:find('v ') then 
		local bb=str:gmatch('[-]?%g*%d+%g*') 
		obj.x[#obj.x+1]=tonumber(bb())
		obj.y[#obj.y+1]=tonumber(bb())
		obj.z[#obj.z+1]=tonumber(bb())
		end
...
```
![image](https://raw.githubusercontent.com/dmabrothers/fblove/master/screenshots/3d.jpg)
