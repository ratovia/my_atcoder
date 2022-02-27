a, b = gets.split.map(&:to_i).sort

if b - a == 1 || (a == 1 && b == 10)
  puts 'Yes'
else
  puts 'No'
end
