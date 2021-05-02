s = gets.chomp.split('')

if s[0] == s[1] && s[1] == s[2] && s[2] == s[0]
  puts "Won"
else
  puts "Lost"
end

