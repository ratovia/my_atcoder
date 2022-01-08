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
  def chmax(a, b) a > b ? a : b end
  INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

t = gets.chomp
n = t.length

dp = []
(n).times {dp << [0, ""]}

if t[-1] == 'D'
  dp[-1] = [1,'D']
elsif t[-1] == 'P'
  dp[-1] = [0,'P']
elsif t[-1] == '?'
  dp[-1] = [1,'D']
end

(n-1-1).downto(0) do |i|
  if t[i] == "D"
    dp[i][0] = dp[i+1][0] + 1
    dp[i][1] = "D" + dp[i+1][1]
  elsif t[i] == "?"
    if dp[i+1][1][0] == "D"
      dp[i][0] = dp[i+1][0] + 1
      dp[i][1] = "P" + dp[i+1][1] 
    else
      dp[i][0] = dp[i+1][0] + 1
      dp[i][1] = "D" + dp[i+1][1]
    end
  elsif t[i] == "P"
    if dp[i+1][1][0] == "D"
      dp[i][0] = dp[i+1][0] + 1
    end
    dp[i][1] = "P" + dp[i+1][1]
  end
end

puts dp[0][1]