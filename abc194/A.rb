a, b = gets.split().map(&:to_i)

x = a + b
y = b
if  x >= 15 && y >= 8
  puts 1
elsif x >= 10 && y >= 3
  puts 2
elsif x >= 3 
  puts 3
else
  puts 4
end
