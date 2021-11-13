n = gets.to_i
require "set"

array = n.times.map { gets.split.map(&:to_i) }

s = Set.new

array.each do |a|
  len = a.shift
  str = a.join(" ")

  s.add(str)
end

puts s.size
