n = gets.to_i
array = n.times.map {gets.split.map(&:to_i)}


sum = 0
(n-1).times do |i|
  kyori = (array[i][0]  - array[i+1][0]).abs + (array[i][1]  - array[i+1][1]).abs
  sum += kyori
end

p sum