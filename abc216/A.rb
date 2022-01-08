x, y = gets.split('.').map(&:to_i)

if y >= 0 && y <= 2
  puts "#{x}-"
elsif y >= 3 && y <= 6
  puts x
elsif y >= 7 && y <= 9
  puts "#{x}+"
end
