a, b = gets.split.map(&:to_i)


if a > 0 && b > 0
  puts 'Alloy'
elsif a == 0
  puts 'Silver'
elsif b == 0
  puts 'Gold'
end
