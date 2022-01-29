n = gets.to_i
array = gets.split.map(&:to_i)


max = 0
array.each do |ele|
  if ele > max
    max = ele
  else
    break
  end
end

puts max
