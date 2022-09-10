n = gets.to_i
array = gets.split.map(&:to_i)

dp = Array.new(n, 0)

array.each_with_index do |ele, index|
  mod = (index - ele) % n
  dp[mod] += 1
  dp[mod-1] += 1
  dp[(mod+1) % n] += 1
end

# pp dp
puts dp.max
