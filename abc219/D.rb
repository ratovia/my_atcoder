n = gets.to_i
x, y = gets.split.map(&:to_i)

INF = Float::INFINITY
def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end

array = n.times.map { gets.split.map(&:to_i) }

dp = Array.new(301){[0,0]}

0.upto(n-2) do |i|

  dp[i+1] = chmin(dp[i+1], dp[i] + (h[i+1] - h[i]).abs)
  dp[i+1] = chmin(dp[i+1], dp[i-1] + (h[i+1] - h[i-1]).abs) if i >= 1
end


puts dp[min]
