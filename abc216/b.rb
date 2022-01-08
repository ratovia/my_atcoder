n = gets.to_i
array = n.times.map { gets.chomp }

puts n != array.uniq.length ? 'Yes' : 'No'
