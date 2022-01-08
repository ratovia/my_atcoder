x = gets.to_i
if x >= 0  && x < 40
  puts 40 - x
elsif x >= 40 && x < 70
  puts 70 - x
elsif x >= 70 && x < 90
  puts 90 - x
elsif x >= 90
  puts "expert"
end
