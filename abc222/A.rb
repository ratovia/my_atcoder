n = gets.chomp

if n.length == 4
  puts n
elsif n.length == 3
  puts "0" + n
elsif n.length == 2
  puts "00" + n
elsif n.length == 1
  puts "000" + n
end
