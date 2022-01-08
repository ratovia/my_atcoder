n = gets.to_i

# puts Math.log(n,2).to_i
num = 1
count = 0

while num <= n
  num = num * 2
  count += 1
end

puts count - 1
