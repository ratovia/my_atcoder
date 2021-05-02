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
n = gets.to_i
array = gets.chomp.split("")

# first_W = []
count = 0
# 0.upto(array.length - 1) do |i|
#   if array[i] == "W"
#     first_W.push(i) 
#   else
#     if first_W.length > 0
#       wi = first_W.shift
#       array[wi] = "R"
#       array[i] = "W"
#       first_W.unshift(i)
#       count += 1
#     end
#   end
#   # binding.pry
# end

# puts count

left = 0
right = n - 1

while left <= right do
  if array[right] == "W"
    right -= 1
  elsif array[right] == "R"
    if array[left] == "W"
      array[left] = "R"
      array[right] = "W"
      count += 1
      left += 1
      right -= 1
    elsif array[left] == "R"
      left += 1
    end
  end
end

puts count