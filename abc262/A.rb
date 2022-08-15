y = gets.to_i

if y % 4 == 2
  puts y
elsif y % 4 == 0
  puts y + 2
elsif y % 4 == 1
  puts y + 1
elsif y % 4 == 3
  puts y + 3
end
