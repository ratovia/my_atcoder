# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a
def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end
INF = Float::INFINITY

n = gets.to_i
h = gets.split.map(&:to_i)


dp = [INF]*(n+1)

dp[1] = 0

1.upto(n) do |i|
  if i == 1
    dp[i] == 0
  elsif i == 2
    dp[i] = dp[1] + (h[1] - h[0] ).abs
  else
    dp[i] = chmin(dp[i - 1] + (h[i - 1] - h[i - 2]).abs , dp[i - 2] + (h[i - 1] - h[i - 3]).abs)
  end
end

puts dp[n]


