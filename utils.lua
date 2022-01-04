Utils = {}

function Utils.hasCollision(a, b)
  return
    a.x + a.width > b.x and
    b.x + b.width > a.x and
    a.y + a.height > b.y and
    b.y + b.height > a.y
end

return Utils