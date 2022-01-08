x,y = gets.split.map(&:to_i)

if x < y
  x, y = y, x
end


sa = x - y

puts sa < 3 ? "Yes" : "No"