n, m, x, t, d = gets.split.map(&:to_i)


if m >= x
  puts t
else
  puts t - ((x - m ) * d)
end
