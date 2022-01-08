s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp
s = [s1,s2,s3]
t = gets.chomp.split("").map(&:to_i)

t.each do |ele|
  print s[ele-1]
end

puts


