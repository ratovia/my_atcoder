t, n = gets.split.map(&:to_i)


# 1.upto(100) do |i|
#   print ((100 + t) * 1.0 / 100 * i)
#   print " "
# end

# if 100 % t == 0
#   puts t * N + (N - 1)
# else
  # puts ((100 * 1.0 / t + 1) * N).floor
# end

# puts(33 * 5 + 103*1.0/100 * 5).ceil
puts (100/t * n + (100 + t)*1.0/100 * n).ceil