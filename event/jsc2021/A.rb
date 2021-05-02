x, y, z = gets.split.map(&:to_i)

g = z * y * 1.0 / x

if g - g.to_i == 0
  puts (g - 1).to_i
else
  puts g.to_i
end