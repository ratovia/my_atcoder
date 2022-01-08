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

alpha = ("a".."z").to_a

res = []

shou = n

def convertBasedRepr(xd)
  x = xd
	res = []
	
  # t = x % 26
  # res.push(t)
  # m = (x / 26).floor
  # if m < 26
  #   if m != 0
  #     res.push(m)
  #   end
  # end
  # x = (x - t) / 26

  while true
    t = x % 26
    m = (x / 26).floor
    res.push(t)
    if m < 26
      if m != 0
        res.push(m)
      end
      break
    end
    x = (x - t) / 26
  end

	return res
end

res = convertBasedRepr(n)

puts res.map{|x| alpha[x-1]}.reverse.join("")
# while shou != 0
#   if shou <= 26
#     res.push(shou)
#     break
#   end
#   shou = shou / 26
#   amari = n % 26
#   if shou == 0
#     res.push(amari)
#     break
#   end
#   if amari == 0
#     res.push(26)
#     break (shou/26 - 1) == 0
#     res.push(shou/26 - 1)
#     break
#   else
#     res.push(amari)
#   end
# end