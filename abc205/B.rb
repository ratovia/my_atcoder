n = gets.to_i
a = gets.split.map(&:to_i).sort

b = [*1..n]

if a == b
  puts "Yes"
else
  puts "No"
end


