# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# o



gets
ary = gets.chomp.split().map(&:to_i).sort.reverse 
odd = ary.each_slice(2).map(&:first)
even = ary.each_slice(2).map(&:first)

pp ary
pp odd

pp even
puts even.sum- odd.sum
