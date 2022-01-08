# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
str = gets.chomp
n = 1
s = 1
w = 1
e = 1
str.length.times do |i|
  if str[i] == 'S'
    s = 0
  elsif str[i] == 'N'
    n = 0 
  elsif str[i] == 'W'
    w = 0
  elsif str[i] == 'E'
    e = 0
  end
end
if ((s ^ n) | (w ^ e)) == 0
  puts "Yes"
else
  puts "No"
end
