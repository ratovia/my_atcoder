def chmax(a, b) a > b ? a : b end
INF = Float::INFINITY
def chmin(a, b) a < b ? a : b end



n = gets.to_i
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)


cusum = Array.new(n+1)

cusum[0] = 0

0.upto(n-1) do |i|
  cusum[i+1] = cusum[i] + s[i]
end


# pp cusum

dp = [t[-1]] + t
# dp[1] = t[0]
# pp dp
1.upto(n) do |index|
  # puts index
  # dp[index] = chmin(dp[index], t[index-1]) # 高橋さんからもらう
  # dp[index] = chmin(dp[index], dp[index-1] + (s[index-1]))
  # puts dp[index-1]
  # puts (cusum[index] - cusum[index-1])
  if index == 1
    dp[index] = chmin(dp[index], dp[-1] + s[-1])
  else
    dp[index] = chmin(dp[index], dp[index-1] + (cusum[index-1] - cusum[index-2])) # 前の人からもらう
  end
  # puts dp[index]
end

1.upto(n) do |index|
  # puts index
  # dp[index] = chmin(dp[index], t[index-1]) # 高橋さんからもらう
  # dp[index] = chmin(dp[index], dp[index-1] + (s[index-1]))
  # puts dp[index-1]
  # puts (cusum[index] - cusum[index-1])
  if index == 1
    dp[index] = chmin(dp[index], dp[-1] + s[-1])
  else
    dp[index] = chmin(dp[index], dp[index-1] + (cusum[index-1] - cusum[index-2])) # 前の人からもらう
  end
  # puts dp[index]
end
# dp[1] = chmin(dp[1], dp[-1] + s[n-1])
dp.shift
puts dp
