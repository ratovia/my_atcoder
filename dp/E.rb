# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
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
def chmin(a, b) a < b ? a : b end
  
  
n,w = gets.split.map(&:to_i)
wv = [*1..n].map { |_| gets.split.map(&:to_i) }

dp = Hash.new(Float::INFINITY)
dp[0] = 0
0.upto(n-1) do |k|
  lw,lv = wv[k]
  dp_dup = dp.dup
  dp_dup.each do |key, value|
    next if (lw + value) > w
    dp[lv + key] = chmin(dp[lv + key] , lw + value) 
  end
end

puts dp.keys.max
