n = gets.to_i
array = n.times.map { gets.chomp }
require 'set'
s = Set.new()
res = "satisfiable"
array.each do |ele|
  str = ele
  s.add(str)

  # puts str
  adder = str.insert(0, "!").dup
  str.slice!(0)
  str.slice!(0)
  slicer = str
  # puts adder
  # puts slicer
  if s.include?(slicer)
    res = slicer
    break
  end
  if s.include?(adder)
    adder.slice!(0)
    res = adder
    break
  end
end

puts res