Utils = {} -- Create an empty table named Utils to store utility functions

-- Function to check for collision between two objects
function Utils.hasCollision(a, b)
  return
    a.x + a.width > b.x and -- Check if the right side of object a is greater than the left side of object b
    b.x + b.width > a.x and -- Check if the right side of object b is greater than the left side of object a
    a.y + a.height > b.y and -- Check if the bottom side of object a is greater than the top side of object b
    b.y + b.height > a.y -- Check if the bottom side of object b is greater than the top side of object a
end

return Utils -- Return the Utils table with the defined function
