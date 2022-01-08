n, w = gets.split.map(&:to_i)

array = n.times.map do
  a, b = gets.split.map(&:to_i)
end.sort.reverse

# pp array

weight = 0
good = 0
array.each_with_index do |ele, index|
  a, b = ele

  if weight + b <= w
    weight += b
    good += a * b
  else
    zan = w - weight
    count = 0
    while weight + 1 <= w
      count += 1
      if count > b
        break
      end
      weight += 1
      good += a
      zan -= 1
    end
  end
  if weight >= w
    break
  end
  # puts weight
  # puts good
end

puts good
