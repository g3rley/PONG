Player = Object:extend()

function Player:new(width, height)
  self.x = love.graphics.getWidth()/6 - width
  self.y = (love.graphics.getHeight()/2) - height
  self.score = 0
  self.speed = 800
  self.height = height
  self.width = width
end

function Player:update(dt)

  if love.keyboard.isDown('up') then
    if self.y > 0 then
      self.y = self.y - self.speed * dt
    end
  end

  if love.keyboard.isDown('down') then
    if self.y < love.graphics.getHeight() - self.height then
      self.y = self.y + self.speed * dt
    end
  end
end

function Player:draw()

  love.graphics.rectangle("fill",
    self.x,
    self.y,
    self.width,
    self.height
  )
end