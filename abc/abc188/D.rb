INF = Float::INFINITY
def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end

n, prime = gets.split.map(&:to_i)
array = n.times.map { gets.split.map(&:to_i) }
# array
# [[0,0,0], [a1,b1,c1], [a2,b2,c2], [a3,b3,c3], [a4,b4,c4]]

last_date = array[-1][1]
array.unshift([0,0,0])
dp = [INF] * (n+1)
# dp
# [INF0,INF1, ・・・INFn-1, INFn]
dp[0] = 0
# [0,INF1, ・・・INFn-1, INFn]

imos = Array.new(last_date+2,0)
# imos
# [0, 01, ・・・0last_date-1, 0last_date, 0]
array.each_with_index do |ele,i|
  start_time, end_time, cost = ele
  end_time = end_time + 1
  imos[start_time] += cost
  imos[end_time] -= cost
end

0.upto(last_date) do |j|
  imos[j+1] += imos[j]
end
pp imos

1.upto(n) do |i|
  dp[i] = chmin(dp[i], dp[i-1] + prime) # prime有り
  dp[i] = chmin(dp[i], dp[i-1] + imos[i]) # prime無し
end

puts dp[n]