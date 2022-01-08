k = gets.to_i
a,b = gets.split.map(&:to_s)

sum_a = 0
a.split("").map(&:to_i).reverse.each_with_index do |x,index|
  kei = k ** index
  mm = x * kei
  sum_a += mm
end

sum_b = 0
b.split("").map(&:to_i).reverse.each_with_index do |x,index|
  kei = k ** index
  mm = x * kei
  sum_b += mm
end

puts sum_a * sum_b
