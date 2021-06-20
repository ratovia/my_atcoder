n = gets.to_i

ze = (1.08 * n).floor

if ze < 206
  puts "Yay!"
elsif ze == 206
  puts "so-so"
else
  puts ":("
end
