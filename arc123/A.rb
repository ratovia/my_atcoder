a, b, c = gets.split.map(&:to_i)

min = Float::INFINITY
sa1 = b - a

be = (b + sa1)
min = (be - c).abs if (be - c).abs < min

puts min

sa2 = c - b

be = (b - sa2)
min = be - a if be - a < min

puts min

# sa1 = b - a

# be = (b + sa1)
# min = be - c if be - c < min

# puts min
