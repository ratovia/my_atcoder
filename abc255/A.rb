r, c = gets.split.map(&:to_i)
array = 2.times.map { gets.split.map(&:to_i) }

puts array[r-1][c-1]
