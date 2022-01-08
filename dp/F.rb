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
s = gets.chomp
t = gets.chomp

sc = s.codepoints
tc = t.codepoints

dp = Array.new(s.size + 1) { Array.new(t.size + 1, 0) }
0.upto(s.length - 1) do |i|
  dpi1 = dp[i+1]
  dpi0 = dp[i]
  0.upto(t.length - 1) do |j|
    if (sc[i] == tc[j]) 
      dpi1[j+1] =  dpi0[j] + 1
    else
      dpi1[j+1] = dpi0[j+1]
      dpi1[j+1] = dpi1[j] if dpi1[j+1] < dpi1[j]
    end
  end
end

sl = s.length
tl = t.length

res = ""
while sl > 0 && tl > 0
  if dp[sl][tl] == dp[sl-1][tl]
    sl -= 1
  elsif dp[sl][tl] == dp[sl][tl-1]
    tl -= 1
  else
    res << s[sl-1]
    sl -= 1
    tl -= 1
  end
end

puts res.reverse