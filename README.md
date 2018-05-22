fbLove
===

 Love2d library for software rendering

**Features**

- Uses love.image like a framebuffer
- It fast.
- Can change resolution on the fly
- Provides classical ways to crashing program, like this for example ```lua  buf[0][-1]=0xDEADBEEF ```
- Love-11.1.0


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


