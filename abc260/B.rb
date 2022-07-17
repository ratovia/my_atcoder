n, x, y, z = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

c = a.map.with_index do |ele, index|
  a[index] + b[index]
end


pass = []
d = a.each_with_index.sort_by do |ele|
  [ele[0], -ele[1]]
end

count = 0
d.reverse.each do |ele|
  break if count == x
  next if pass.include?(ele[1]+1)
  pass << ele[1] + 1
  count += 1
end

d = b.each_with_index.sort_by do |ele|
  [ele[0], -ele[1]]
end

count = 0
d.reverse.each do |ele|
  break if count == y
  next if pass.include?(ele[1]+1)

  pass << ele[1] + 1
  count += 1
end


d = c.each_with_index.sort_by do |ele|
  [ele[0], -ele[1]]
end

count = 0
d.reverse.each do |ele|
  break if count == z
  next if pass.include?(ele[1]+1)

  pass << ele[1] + 1
  count += 1
end

puts pass.sort
