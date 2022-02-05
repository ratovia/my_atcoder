t = gets.to_i

array = t.times.map { gets.split.map(&:to_i) }


array.each do |a, s|
  bit = a.to_s(2)
  len = a.to_s(2).length
  sa = s - a * 2
  puts sa
end



# "110101011011001101111010110101000100011000000100001010001100"
# "11x1x1x11x11xx11x1111x1x11x1x1xxx1xxx11xxxxxx1xxxx1x1xxx11xx"
# "11x1x1x11x11xx11x1111x1x11x1x1xxx1xxx11xxxxxx1xxxx1x1xxx11xx"
