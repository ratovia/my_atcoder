s = gets.chomp

len = s.length

array = []

len.times do |i|
  array.push(s.split("").rotate(i).join())
end

array.sort!

puts array[0]
puts array[-1]
