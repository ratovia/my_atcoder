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

# require 'pry'

n = gets.to_i
array = gets.split.map(&:to_i).sort!.reverse

div = []
seat = []
happy = 0
# 1回目
if n >= 3
  k = 3
else 
  k = n
end 
1.upto(k) do |i|
  seat.push(array[i-1])
  next if i == 1 
  happy += seat[i-2]
  div.push(array[i-1])
end
# i回目
4.upto(n) do |i|
  j = seat.index(div[0])

  if seat[j-1] > seat[j+1]
    seat.insert(j,array[3])
    happy += seat[j+1]
    div.push(array[3])
    div.shift
  else
    seat.insert(j+1,array[3])
    happy += seat[j+2]
    div.push(array[3])
    div.shift
  end
end

puts happy



# res = Array.new(n,0)
# 0.upto(n-2) do |i|
#   res[i+1] = res[i] + array[i]
# end 





# puts res[-1]
# 2 3 4 7 8 20 1

# 20 8 7 4 3 2 1
#  0 0.0 0 0 0 0