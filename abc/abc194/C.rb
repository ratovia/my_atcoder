# n = gets.to_i

# array = gets.split.map(&:to_i).sort!

# sum = 0
# 1.upto(n-1) do |i|
#   0.upto(i) do |j|
#     sum += (array[i] - array[j]) ** 2
#   end
# end

# puts sum


# n = gets.to_i

# array = gets.split.map(&:to_i).sort!
# sum = 0
# 0.upto(n-1) do |i|
#   num = array.shift
#   p num ** 2 * i -  num ** 2 * (n-1-i) 
#   sum += num ** 2 * i -  num ** 2 * (n-1-i) 
# end

# puts sum

n = gets.to_i

array = gets.split.map(&:to_i).sort!
p_array = array.combination(2).to_a

sum = 0
p_array.each do |ele|
  sum += (ele[1] - ele[0]) ** 2
end

puts sum
