-- 20136kb ram if this file bi empty andmauin.lua has load,update and draw empty functions only
function love.conf(t)
 -- require("jit.p").start(nil, 'profile.txt')
 -- require("jit.v").start("profile_verbose.txt")
    t.identity = nil                    -- The name of the save directory (string)
    --t.version = "0.10.2"                -- The LÖVE version this game was made for (string)
    t.console = false                   -- Attach a console (boolean, Windows only)
    t.accelerometerjoystick = false      -- Enable the accelerometer on iOS and Android by exposing it as a Joystick (boolean)
    t.externalstorage = false           -- True to save files (and read from the save directory) in external storage on Android (boolean) 
    t.gammacorrect = false              -- Enable gamma-correct rendering, when supported by the system (boolean)
 
    t.window.title = "test lab"         -- The window title (string)
	 --love.window.setTitle can be used to change the window title outside of the config file.
    t.window.icon = nil                 -- Filepath to an image to use as the window's icon (string)
    t.window.width = 824                -- The window width (number)
    t.window.height = 980               -- The window height (number)
    t.window.borderless = false         -- Remove all border visuals from the window (boolean)
    t.window.resizable = true          -- Let the window be user-resizable (boolean)
    t.window.minwidth = 320               -- Minimum window width if the window is resizable (number)
    t.window.minheight = 240              -- Minimum window height if the window is resizable (number)
    t.window.fullscreen = false         -- Enable fullscreen (boolean)
    t.window.fullscreentype = "desktop" -- Choose between "desktop" fullscreen or "exclusive" fullscreen mode (string)
    t.window.vsync = false               -- Enable vertical sync (boolean)
    t.window.msaa = 0                   -- The number of samples to use with multi-sampled antialiasing (number)
    t.window.display = 1                -- Index of the monitor to show the window in (number)
    t.window.highdpi = false            -- Enable high-dpi mode for the window on a Retina display (boolean)
    t.window.x = nil                    -- The x-coordinate of the window's position in the specified display (number)
    t.window.y = nil                    -- The y-coordinate of the window's position in the specified display (number)
 
 
  jit.on()
  --jit.opt.start(3)
end
