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
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

require 'pry'
n = gets.to_i
# a,b,c = gets.split.map(&:to_i)

s = [*1..n].map { |_| gets.chomp }
binding.pry
g = s.group_by(&:itself).map{|k,v| [k, v.count]}

max_str = []
max_num = 0

g.each do |line|
  if max_num < line[1]
    max_num = line[1]
    max_str.push(line[0])
  elsif max_num = line[1]
    max_str.push()
  end
end
