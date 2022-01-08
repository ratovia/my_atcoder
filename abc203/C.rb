n,k = gets.split.map(&:to_i)

array = n.times.map { gets.split.map(&:to_i) }.sort!

# p array

sum = k

array.each_with_index do |ele, i|
  pos , num = ele
  if pos <= sum
      sum += num
  else
    break
  end
end

puts sum