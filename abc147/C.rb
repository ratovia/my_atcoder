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
  def chmax(a, b) a > b ? a : b end
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

  require 'Set'
n = gets.to_i
wit = [nil]
n.times do 
  a = gets.to_i
  xy = []
  a.times do
    xy << gets.split.map(&:to_i)
  end
  wit << xy
end

pp wit
max_num = 0
1.upto(n) do |i|
  trust = Set.new
  untrust = Set.new
  trust.add(i)
  flag = true
  queue = [i]
  while queue.length > 0
    j = queue.pop
    wit[j].each do |array|
      if array[1] == 1
        if untrust.include?(array[0])
          # 矛盾
          flag = false
          break
        else
          trust.add(array[0])
        end
      else
        if trust.include?(array[0])
          # 矛盾
          flag = false
          break
        else
          untrust.add(array[0])
        end
      end
    end
  end
  puts "#{j} #{max_num}"
  max_num = chmax(max_num, trust.length) if flag
end

puts max_num