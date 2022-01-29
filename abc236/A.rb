s = gets.chomp
a,b = gets.split.map(&:to_i)
tmp = s[a-1]

s[a-1] = s[b-1]
s[b-1] = tmp

puts s
