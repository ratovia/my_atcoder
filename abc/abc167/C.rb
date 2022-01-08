### SNIPPET
  # n = gets.split.map(&:to_i)
  
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
def chmin(a, b) a < b ? a : b end

n,m,x = gets.split.map(&:to_i)

book_list = n.times.map { gets.split.map(&:to_i) }

min = INF
0.upto(2 ** n) do |i|
  select_book_cost = 0
  select_book_skill = Array.new(m, 0)
  n.times do |j| 
    if i[j] == 1
      select_book_cost += book_list[j][0]

      m.times do |k|
        select_book_skill[k] += book_list[j][k]
      end
    end
  end
  chmin(min, select_book_cost) if select_book_skill.all?{|skill| skill >= x}
end

puts min != INF ? min : -1