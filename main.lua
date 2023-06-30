-- Importing necessary libraries
Object = require 'libraries/classic/classic'
Utils = require 'utils'

-- love.load() is called once at the beginning of the game to set up everything.
function love.load()
  -- Create a table to store object files
  local object_files = {}
  
  -- Recursively enumerate the 'objects' folder and add the file paths to the object_files table
  recursiveEnumerate('objects', object_files)
  
  -- Require and load all the files stored in the object_files table
  requireFiles(object_files)

  -- Create instances of the Map, Player, and Ball classes
  map = Map()
  player = Player(10, 40)
  ball = Ball(10)
end

-- Recursive function to enumerate files and directories inside a folder
function recursiveEnumerate(folder, file_list)
  -- Get a list of items (files and directories) inside the specified folder
  local items = love.filesystem.getDirectoryItems(folder)

  for _, item in ipairs(items) do
    local path = folder .. '/' .. item
    -- Get information about the item (file or directory)
    local info = love.filesystem.getInfo(path)

    -- If it's a file, add its path to the file_list table
    if info.type == 'file' then
      table.insert(file_list, path)
    -- If it's a directory, call the recursiveEnumerate function again to enumerate its contents
    elseif info.type == 'directory' then
      recursiveEnumerate(path, file_list)
    end
  end
end

-- Function to require and load files from a list of file paths
function requireFiles(files)
  for _, file in ipairs(files) do
    -- Remove the '.lua' extension from the file name
    local file_name = file:sub(1, -5)
    -- Require and execute the file to load its content
    require(file_name)
  end
end

-- love.update(dt) is called every frame and is used to update the game's state.
function love.update(dt)
  -- Update the player's state based on the time passed (dt)
  player:update(dt)
  -- Update the ball's state based on the time passed (dt)
  ball:update(dt)
end

-- love.draw() is called every frame after love.update() and is used to draw things on the screen.
function love.draw()
  -- Draw the map
  Map:draw()
  -- Draw the player
  player:draw()
  -- Draw the ball
  ball:draw()
end
