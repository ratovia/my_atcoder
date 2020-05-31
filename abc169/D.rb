### SNIPPET
  # n = gets.split.map(&:to_i)
  # a = [*1..m].repeated_combination(n).to_a
  # array = n.times.map { gets.split.map(&:to_i) }
  # [].all?(&:even?)
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
require 'prime'
n = gets.to_i
i = 2
count = 0
while true 
  p = Prime.each(i).last
  e = 1
  while p ** e < n
    if n % p ** e == 0
      z = p ** e
      n = n / z
      count = count + 1
      break
    end
    e += 1
  end

  if n == 1
    break
  end
  i = i + 1
end

puts count