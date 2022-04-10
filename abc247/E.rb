n, x, y = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

max = 0
min = 2 * 10 ** 5 + 1
count = 0
array.each do |ele|
  if ele > max
    max = ele
  end
  if ele < min
    min = ele
  end

  if max == x && min == y
    count += 1
  end
end

puts count 
