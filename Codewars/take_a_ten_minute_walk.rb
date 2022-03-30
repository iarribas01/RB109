# needs to be the same number of NS and EW

def is_valid_walk(walk)
  return false if walk.length != 10
  
  num_directions = {}
  
  walk.uniq.each do |direction|
    num_directions[direction] = walk.count(direction)
  end
  
  if num_directions['n'] != num_directions['s'] ||
     num_directions['w'] != num_directions['e']
     return false
  end
  true
end

#some test cases for you...
p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false