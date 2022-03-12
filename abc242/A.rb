a,b,c,x = gets.split.map(&:to_i)


if a >= x
  puts 1.0
elsif b < x
  puts 0.0
else
  puts c / (b - a).to_f
end
