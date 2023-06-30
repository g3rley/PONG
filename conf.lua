-- The 'love.conf(t)' function is used to configure the LÖVE game settings.
-- This function is called before the game starts.

function love.conf(t)
  t.title = 'Pong (Atari)' -- Set the title of the game window to 'Pong (Atari)'
  t.console = true -- Enable the console for debugging (prints debug information to the console)
  t.width = 858 -- Set the width of the game window to 858 pixels
  t.height = 525 -- Set the height of the game window to 525 pixels
  
  -- Additional configurations:
  
  t.version = '11.3' -- Set the version of LÖVE that this game is compatible with
  
  t.modules.audio = true -- Enable the audio module (sound/music support)
  t.modules.data = true -- Enable the data module (filesystem access)
  t.modules.event = true -- Enable the event module (input event handling)
  t.modules.font = true -- Enable the font module (font rendering)
  t.modules.graphics = true -- Enable the graphics module (graphics drawing)
  t.modules.image = true -- Enable the image module (image file support)
  t.modules.joystick = true -- Enable the joystick module (joystick support)
  t.modules.keyboard = true -- Enable the keyboard module (keyboard input handling)
  t.modules.math = true -- Enable the math module (mathematical functions)
  t.modules.mouse = true -- Enable the mouse module (mouse input handling)
  t.modules.physics = false -- Disable the physics module (no physics simulation)
  t.modules.sound = true -- Enable the sound module (sound file support)
  t.modules.system = true -- Enable the system module (system-related functions)
  t.modules.thread = true -- Enable the thread module (threading support)
  t.modules.timer = true -- Enable the timer module (time-related functions)
  t.modules.touch = true -- Enable the touch module (touch input handling)
  t.modules.video = true -- Enable the video module (video playback support)
  
  -- Specify the LÖVE API version used in the game code (not the same as t.version)
  t.identity = 'PONG_Atari' -- Set a unique identifier for this game's save directory
  t.accelerometerjoystick = true -- Enable accelerometer-based joystick on mobile platforms
  
  t.window.fullscreen = false -- Set the game window to run in windowed mode (not fullscreen)
  t.window.fullscreentype = 'desktop' -- Set the fullscreen type to desktop (allows resizing the window)
  t.window.vsync = 1 -- Enable vertical sync to avoid screen tearing (0 to disable)
  t.window.msaa = 0 -- Disable multi-sampling anti-aliasing for better performance
  t.window.display = 1 -- Set the display index to use for the game window (usually 1)
  t.window.highdpi = false -- Disable high-DPI mode for the game window
  t.window.x = nil -- Let the operating system handle the window's initial x position
  t.window.y = nil -- Let the operating system handle the window's initial y position
  t.window.icon = nil -- Specify an image file as the window's icon (path to the image)
  t.window.minwidth = 800 -- Set the minimum width of the game window to 800 pixels
  t.window.minheight = 480 -- Set the minimum height of the game window to 480 pixels
  t.window.resizable = true -- Enable window resizing
  t.window.borderless = false -- Disable borderless window mode
  t.window.centered = true -- Center the game window on the screen
  t.window.display = 1 -- Set the display index to use for the game window (usually 1)
  t.window.hidpi = false -- Disable high-DPI mode for the game window
  t.window.x = nil -- Let the operating system handle the window's initial x position
  t.window.y = nil -- Let the operating system handle the window's initial y position
  
  -- Specify the module search paths (where LÖVE looks for Lua files)
  t.appendidentity = true -- Append the game's save directory to the game's search paths
  t.externalstorage = false -- Disable the use of external storage directories (Android only)
  t.gammacorrect = false -- Disable automatic gamma correction
  
  -- Specify the audio settings
  t.audio.mixwithsystem = true -- Allow the game audio to mix with other system audio
  
  -- Specify the input settings
  t.keyboard.keypressed = true -- Enable the callback function love.keypressed(key, scancode, isrepeat) for keyboard input handling
  t.keyboard.textinput = true -- Enable the callback function love.textinput(text) for text input handling
  
  -- Specify the love-release settings
  t.releases = {
    title = 'Pong', -- Set the title of the game release
    package = nil, -- Specify the name of the game's release package (used for creating a distributable package)
    loveVersion = '11.3', -- Set the minimum LÖVE version required to run the release
    version = '1.0', -- Set the version of the game release
    author = 'Gerley Adriano', -- Set the author's name for the game release
    email = 'g3rley@gmail.com', -- Set the author's email address for the game release
    description = 'A classic Pong game', -- Set a description for the game release
    homepage = 'https://github.com/g3rley/PONG', -- Set the homepage URL for the game release
    excludeFileList = {}, -- Specify a list of files to exclude from the release
    releaseDirectory = 'release', -- Set the directory where the release files will be created
  }
end
