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

n,m,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

if n < m
  a,b = b,a
end

# dp i冊読みさいの最小コスト
dp = Array(k+1, INF)

dp[0] = 0
0.upto(400000 - 1) do |i|
  dp[i+1] = dp[i] + 

# cost = 0
# count = 0
# max_books = a.length + b.length
# max_books.times do |i|
#   if b[0] == nil
#     book = a[0]
#     if (cost + book) <= k
#       cost += book
#       count += 1
#       a.shift
#     elsif (cost + book) > k
#       break
#     end
#   elsif a[0] < b[0]
#     book = a[0]
#     if (cost + book) <= k
#       cost += book
#       count += 1
#       a.shift
#     elsif (cost + book) > k
#       break
#     end
#   else
#     book = b[0]
#     if (cost + book) <= k
#       cost += book
#       count += 1
#       b.shift
#     elsif (cost + book) > k
#       break
#     end
#   end
# end

# puts count

