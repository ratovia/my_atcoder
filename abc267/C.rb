n, m = gets.split.map(&:to_i)

array = gets.split.map(&:to_i)

s = Array.new(n+1)

s[0] = 0

0.upto(n-1) do |i|
  s[i+1] = s[i] + array[i]
end

# pp s

i_max = 0

0.upto(m-1) do |l|
  i_max += (l+1) * array[l]
end

# puts "#{0} #{i_max}"
current = i_max
1.upto(n-m) do |i|
  # puts (s[i+m-1] - s[i-1])
  # puts array[i+m-1] * m
  current = current - (s[i+m-1] - s[i-1]) + array[i+m-1] * m

  # puts "#{i} #{current}"

  i_max = [i_max, current].max
end

puts i_max
