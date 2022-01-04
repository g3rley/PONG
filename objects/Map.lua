Map = Object:extend()

function Map:new()
end

function Map:draw()
  local W, H = love.graphics.getDimensions()
  love.graphics.line(W/2, 0, W/2, H)
end