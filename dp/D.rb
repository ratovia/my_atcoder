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
def chmax(a, b) a > b ? a : b end
INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

n,w = gets.split.map(&:to_i)
array = [*1..n].map { |_| gets.split.map(&:to_i) }

dp = []
dp[0] = [0]
n.times {dp.push([-INF])}
n.times do |i|
  sum_w = 0
  while sum_w < w
    # iを選ぶとき
    dp[i+1][sum_w] = chmax(dp[i+1][sum_w], dp[i][sum_w + array[i][0]] + array[i][1]) 

    # iを選ばないとき
    dp[i+1] = chmax(dp[i+1][sum_w], dp[i][sum_w]) 
    
  end
  dp[i+1] = chmax(dp[i+1], dp[i] + array[1][1]) 
end

puts dp[n][w]
