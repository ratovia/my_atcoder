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

require 'pry'
r1,c1 = gets.split.map(&:to_i)
r2,c2 = gets.split.map(&:to_i)

if r1 > r2
  r1,r2 = r2,r1
  c1,c2 = c2,c1  
end

sax = (r1 - r2).abs
say = (r1 - r2).abs

if sax == 0 && say == 0
  count = 0
end 

if sax == 0
  if say % 2 == 0
    count = 2
  else
    count = 3
  end
if say == 0
  if sax % 2 == 0
    count = 2
  else
    count = 3
  end
else
  if sax < say
    count 
  else 

  end


end




# current = [r1, c1]

# count = 0

# if r1 == r2 && c1 == c2

# elsif r2 % r1 == 0 && c2 % c1 == 0
#   count += 1
# else
#   # first
#   sax = (r1 - r2).abs
#   # binding.pry
#   # if xxxx
#   # else
#     # second
#     current[0] = current[0] + sax
#     current[0] = current[1] + sax
#     count += 1 if sax != 0
#     if r1 == r2 && c1 == c2

#     elsif r2 % current[0] == 0 && c2 % current[1] == 0
#       count += 1
#     else
#       # third
#       sa = (c2 - current[1]).abs
#       if sa <=  3
#         count += 1
#       elsif sa <= 6
#         count += 2
#       elsif sa % 2 == 0
#         count += 2
#       else
#         count += 3
#       end
#     end
#   # end
# end  

# puts count 