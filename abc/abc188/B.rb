n = gets.to_i
array = 2.times.map { gets.split.map(&:to_i) }.transpose


sum = 0
array.each do |ele|
  sum += ele[0] * ele[1]
end

puts sum == 0 ? "Yes" : "No"