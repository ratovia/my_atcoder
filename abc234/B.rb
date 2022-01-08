n = gets.to_i

array = n.times.map { gets.split.map(&:to_i) }

max = 0

0.upto(n-2) do |i|
  i.upto(n-1) do |j|
    x1, y1 = array[i]
    x2, y2 = array[j]

    len = Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)

    if max < len
      max = len
    end
  end
end

puts max
