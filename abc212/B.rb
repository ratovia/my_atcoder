array = gets.chomp.split('').map(&:to_i)
require 'set'
s = Set.new

isStrong = false

tmp = nil
array.each_with_index do |e, index|
  s.add(e)
end

sa1 = array[1] - array[0]
sa2 = array[2] - array[1]
sa3 = array[3] - array[2]


if s.length == 1
  puts "Weak"
elsif (sa1 == 1 || sa1 == -9) && (sa2 == 1 || sa2 == -9) && (sa3 == 1 || sa3 == -9)
  puts "Weak"
else
  puts "Strong"
end
