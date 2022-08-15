s = gets.chomp

s[0]
s[1]
s[2]
if s[0] != s[1] && s[0] != s[2]
  puts s[0]
  exit
end

if s[1] != s[0] && s[1] != s[2]
  puts s[1]
  exit
end

if s[2] != s[0] && s[2] != s[1]
  puts s[2]
  exit
end

puts "-1"
