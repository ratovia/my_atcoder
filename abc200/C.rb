require 'set'
n = gets.to_i
array = gets.split.map(&:to_i).sort.reverse


d = Array.new(201, 0)
dx = Array.new(201, 0)

array.each do |ele|
  num = ele % 200
  if ele > 200
    d[num] += 1
  else
    dx[num] += 1
  end
end

def fact(n)
  n * (n+1) / 2
end

# p d
# p dx
sum = 0
200.times do |i|
  sum += fact(d[i] + dx[i] - 1)
end

puts sum


# 123 223 123 523 200 2000

# [2000, 523, 223, | 200, 123, 123]
# 0 23 23 |  0 23 23
