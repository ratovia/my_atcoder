x, y, a, b, c = gets.split.map(&:to_i)

if x * y < (a + b + c)
  puts "No"
  exit
end

if x > y
  x , y = y , x
end


max = [a,b,c].max

if x >= 3 && y >= a && y >= b && y >= c
  puts "Yes"
end

max/x
