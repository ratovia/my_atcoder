x1,y1 = gets.split.map(&:to_i)
x2,y2 = gets.split.map(&:to_i)
x3,y3 = gets.split.map(&:to_i)

if x1 == x2
  x = x3
elsif x1 == x3
  x = x2
elsif x2 == x3
  x = x1
end

if y1 == y2
  y = y3
elsif y1 == y3
  y = y2
elsif y2 == y3
  y = y1
end

puts "#{x} #{y}"
