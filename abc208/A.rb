a,b = gets.split.map(&:to_i)

if b >= a && b <= a * 6
  puts "Yes"
else
  puts "No"
end
