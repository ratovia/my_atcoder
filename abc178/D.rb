### SNIPPET
  # n = gets.split.map(&:to_i)
  # array = n.times.map { gets.split.map(&:to_i) }
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
  # ["a","a","b"].group_by(&:itself).map{|k,v| [k, v.count]}.to_h #=> {"a"=>2, "b"=>1}
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さ = a * Math.sin(w / 180.0 * Math::PI), 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end
s = gets.to_i


@dp = Array.new(s+1, nil)
@dp[0] = 0
@dp[1] = 0
@dp[2] = 0
@dp[3] = 1
@dp[4] = 1
@dp[5] = 1
@dp[6] = 2
# @dp[7] = 3

def furu(i)
  if @dp[i] != nil
    return @dp[i]
  else
    @dp[i] = 1 if i >= 6
    3.upto(i) do |j|
      @dp[i] += furu(j) * furu(i-j)
    end
  end
  return @dp[i]
end
puts furu(s) % (10 ** 9 + 7)

