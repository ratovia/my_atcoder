v,t,s,d = gets.split.map(&:to_i)

if d <= v*s && d >= v*t
  puts "No"
else
  puts "Yes"
end