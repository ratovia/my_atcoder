n, x, y = gets.split.map(&:to_i)

red = Array.new(n,0)
blue = Array.new(n,0)

red[-1] = 1
current = n-1

# pp red
# pp blue

while current > 0
  blue[current] += red[current] * x
  blue[current-1] += blue[current] * y if (current-1) >= 0
  red[current-1] += (red[current] + blue[current]) if (current-1) >= 0
  current -= 1
end
# pp red
# pp blue
puts blue[0]
