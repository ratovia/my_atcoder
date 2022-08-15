n, l, b = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
INF = Float::INFINITY

sum = array.sum

dp = Array.new(n)

0.upto(n-1) do |i|
  ele = array[i]
  sum += l - a
  v = sum if v > sum
  dp[i] = v
end


