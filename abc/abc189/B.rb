n, x = gets.split
n = n.to_i
x = x.to_f * 100
# require 'pry'
array = n.times.map { gets.split }
sum = 0
flag = false
res = 0
array.each.with_index(1) do |ele, i|
  ml, par = ele[0].to_i , ele[1].to_f
  sum += (ml * par)
  # binding.pry
  if sum > x
    flag = true
    res = i
    break
  end
end

if flag
  puts res
else
  puts "-1"
end

