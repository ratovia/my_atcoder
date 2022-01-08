### SNIPPET
  # array = [*1..q].map { |_| gets.split.map(&:to_i) }
  # n = gets.split.map(&:to_i)
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さh = a * Math.sin(w / 180.0 * Math::PI)
  # 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
INF = Float::INFINITY
def chmin(a, b) a < b ? a : b end

# n,k = gets.split.map(&:to_i)
# h = gets.split.map(&:to_i)

# h = h + [0]*(k+1)
# dp = [INF] * (n)

# dp[0] = 0
# (n-1).times do |i|
#   1.upto(k) do |j|
#     break if i+j > n
#     dp[i+j] = chmin(dp[i + j], dp[i] + (h[i] - h[i + j]).abs)
#   end
# end

# puts dp[n-1]

# 5 6
# 10 30 40 50 20
n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(0)
# n5 k3
# h = [10 30 40 50 20]

dp = [INF] * (n+1)

dp[1] = 0
1.upto(n-1) do |i|
  t = (i + k) > n ? (n-i) : k
  1.upto(t) do |j|
    dp[i+j] = chmin(dp[i+j], dp[i] + (h[i+j] - h[i]).abs)
  end
end

puts dp[n]
