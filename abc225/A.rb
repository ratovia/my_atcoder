s = gets.chomp.split("")

len = s.uniq.length


if len == 1
  puts 1
elsif len == 2
  puts 3
elsif len == 3
  puts 6
end
