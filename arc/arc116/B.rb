n = gets.to_i
array = gets.split.map(&:to_i).sort!
ans = array.map { |i| i**2 }.inject(&:+)
p ans
# s = Array.new(n+1)

# s[0] = 0

# 0.upto(n-1) do |i|
#   s[i+1] = s[i] + array[i]
# end

# sk = Array.new(n+1)

sum = 0
(1 << n).times do |x|
  next if x == 0
  str = format("%0#{n}<number>d", number: x.to_s(2))
  pos = str.index("1")
  next if pos == nil
  r_pos = str.rindex("1")
  mul = array[pos] * array[r_pos]
  sum += mul
end

puts sum % 998244353
 