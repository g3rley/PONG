Ball = Object:extend()

function Ball:new(radius)
  self.radius = radius
  self.x = love.graphics.getWidth()/2 - (2 * radius)/2
  self.y = love.graphics.getHeight()/2

  self.width = self.radius * 2
  self.height = self.radius * 2

  self.speed_x = -200
  self.speed_y = -love.math.random(1,100) * 0.01
end

function Ball:update(dt)

  if (Utils.hasCollision(player, self)) then
    self.speed_x = math.abs(self.speed_x)
  end

  self.x = self.x + self.speed_x * dt
end

function Ball:draw()
  love.graphics.circle('fill', self.x, self.y, self.radius)
end