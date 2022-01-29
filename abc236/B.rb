n = gets.to_i
a = gets.split.map(&:to_i)


sum = n * (n+1) / 2 * 4

sum_x = a.sum

puts sum - sum_x
