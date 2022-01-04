Object = require 'libraries/classic/classic'
Utils = require 'utils'

function love.load()

  local object_files = {}
  recursiveEnumerate('objects', object_files)
  requireFiles(object_files)

  map = Map()
  player = Player(10, 40)
  ball = Ball(10)
end

function recursiveEnumerate(folder, file_list)
  local items = love.filesystem.getDirectoryItems(folder)

  for _, item in ipairs(items) do
    local path = folder .. '/' .. item
    local info = love.filesystem.getInfo(path)

    if info.type == 'file' then
      table.insert(file_list, path)
    elseif info.type == 'directory' then
      recursiveEnumerate(path, file_list)
    end
  end
end

function requireFiles(files)
  for _, file in ipairs(files) do
    local file_name = file:sub(1, -5)
    require(file_name)
  end
end

function love.update(dt)
  player:update(dt)
  ball:update(dt)
end

function love.draw()
  Map:draw()
  player:draw()
  ball:draw()
end