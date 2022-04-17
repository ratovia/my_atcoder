a, b , k = gets.split.map(&:to_i)

sum = a
count = 0
while b > sum
  sum *= k
  count += 1
end

puts count
