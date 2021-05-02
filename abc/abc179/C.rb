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
  # [2,4,6].each_with_index.sort

  require("set")
# n = gets.to_i
# count = 0
# 1.upto(n-1) do |c|
#   ab = n-c
#   root = Math.sqrt(ab).ceil
#   yaku = Set.new
#   1.upto(root) do |x|
#     if n % x == 0
#       yaku.add(x)
#       yaku.add(n/x)
#     end
#   end
#   count += yaku.length
#   # 1.upto(ab) do |a|
#   #   if ab % a == 0 
#   #     b = ab / a
#   #     count += 1 if (a * b + c) == n 
#   #   end
#   # end
# end

# puts count 

n = gets.to_i
#   def chmin(a, b) a < b ? a : b end

count = 0
  # ab = n-1
ab = n-1
root = Math.sqrt(ab).ceil
yaku = Set.new
1.upto(root) do |x|
  count += (n-1)/x.floor
end
puts count