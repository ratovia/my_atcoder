n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }

flag = false
min = Float::INFINITY

array.each_with_index do |ele, i|
  ai, pi, xi = ele
  zan = xi - ai
  if zan >= 1
    if min > pi
      min = pi
    end
    flag = true
  end
end

puts flag ? min : -1