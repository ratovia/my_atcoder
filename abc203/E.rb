n,m = gets.split.map(&:to_i)
array = Array.new(2*n+1) { Array.new(2*n+1,0) }
require "Set"

m.times do 
  i, j = gets.split.map(&:to_i)
  array[i][j] = 1
end

# pp array

queue = []
queue.push([0,n])

s = Set.new

# p queue
while queue.length != 0
  target = queue.shift
  x = target[0]
  y = target[1]

  if x == 2*n
    s.add(y)
    next
  end

  if array[x+1][y-1] == 1
    queue.push([x+1 , y-1])
  end
  if array[x+1][y] == 0
    queue.push([x+1 , y])
  end
  if array[x+1][y+1] == 1
    queue.push([x+1 , y+1])
  end
  # p queue
  # p s
end

# p s
puts s.length