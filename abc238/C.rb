n = gets.to_i

mod = 998244353
def wa(x)
  x * (x + 1) / 2
end

k = [
  wa(9),# 1
  wa(90),# 2
  wa(900),# 3
  wa(9000),#4
  wa(90000),#5
  wa(900000),#6
  wa(9000000),#7
  wa(90000000),#8
  wa(900000000),#9
  wa(9000000000),#10
  wa(90000000000),#11
  wa(900000000000),#12
  wa(9000000000000),#13
  wa(90000000000000),#14
  wa(900000000000000),#15
  wa(9000000000000000),#16
  wa(90000000000000000),#17
  wa(900000000000000000) #18
]

# pp k

len = n.to_s.length

# pp len
be = n - 1 * 10 ** (len - 1) + 1

# p k[0...len]
puts (wa(be) + k[0...(len-1)].sum) % mod