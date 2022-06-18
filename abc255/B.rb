n, k = gets.split.map(&:to_i)
np = [*1..n]
array = gets.split.map(&:to_i)
sa = np - array

pos = n.times.map { gets.split.map(&:to_i) }

# pp sa

max = 0
sa.each do |ele|
  target = pos[ele-1]
  min = Float::INFINITY
  array.each_with_index do |ele2|
    x, y = pos[ele2-1]
    dis = Math.sqrt((target[0] - x) ** 2 + (target[1] - y) ** 2)
    # pp dis
    min = dis if min > dis
  end
  max = min if max < min
end

puts max
