n = gets.to_i
array = gets.split.map(&:to_i).each_with_index.sort

puts array[-2][1] + 1
