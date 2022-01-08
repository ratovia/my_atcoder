n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }

  INF = Float::INFINITY
  def chmin(a, b) a < b ? a : b end
  def chmax(a, b) a > b ? a : b end


min_row = INF
min_a = INF
min_b = INF
min_x = INF
min_y = nil

array.each_with_index do |ele, i|
  a, b = ele
  min_row = chmin(min_row, a+b)
  if min_a > a
    min_a = a
    min_x = i
  end
end
array.each_with_index do |ele, i|
  _, b = ele
  if min_b > b
    min_y = i
    if min_x != min_y
      min_b = b
    end
  end
end

puts chmin( chmax(min_a, min_b) , min_row)