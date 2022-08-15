n, l, r = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
INF = Float::INFINITY
sum = 0

a_sum = array.sum
l_sum = l*n
r_sum = r*n
min = INF
min_index = nil
n.downto(1) do |i|
  sum += array[i-1]
  t_current = l*(i-1)+sum

  if t_current < min
    min = t_current
    min_index = i-1
  end
  # puts t_current
end

# pp min
# pp min_index

l_index = min_index - 1

sum = 0
min = INF
1.upto(n) do |i|
  if (i-1) <= l_index
    sum += l
  else
    sum += array[i-1]
  end
  t_current = sum+r*(n-i)

  if t_current < min
    min = t_current
  end
end


puts [min,a_sum,l_sum,r_sum].min
