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

t = gets.to_i

line = []
t.times do |i|
  line << gets.split.map(&:to_i)
end

pp line

n = line[0]
dp = Hash.new(INF)
cur = 0
dp[cur] = 0
while dp[n] != INF
  dp[cur+]
end

1
9
0 0 1 0 0 0 0 2 3
001000000

3 2 0 0 0 0 1 0 0 
000000100

3 = 2 1 = 0 1  0 


1
5
0 5 2 0 7 5
111100
1


5 7 0 2 5 0 0
0 0 1 1 1 1


0
0or5

x ^ 7 = 0or5 
x = 7or2 

x ^ 0 = 7or2
x = 7or2