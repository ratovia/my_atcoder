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
  INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

s = gets.chomp
t = gets.chomp

# 7文字 -> 1文字 
sa = s.length - t.length


def levenshtein_distance(s, t)
  di = 0
  s.length.times do |i|
    di += 1 if s[i] != t[i]
  end
  di
end

# puts sa
min = INF
0.upto(sa) do |i|
  bu = s.slice(i,t.length)
  # puts bu
  bu = levenshtein_distance(bu, t)
  # puts bu

  min = bu if min > bu
end

puts min


