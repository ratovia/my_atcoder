n = gets.to_i

str_array = []

num = n
while num > 0
  if num % 2 == 1
    num -= 1
    str_array.push('A')
  else
    num /= 2
    str_array.push('B')
  end
end

puts str_array.join.reverse
