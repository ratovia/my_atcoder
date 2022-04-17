n = gets.to_i
array = gets.split.map(&:to_i)
  def chmax(a, b) a > b ? a : b end
  def chmin(a, b) a < b ? a : b end
ans = 0
0.upto(n-1) do |i|
  x = array[i]
  i.upto(n-1) do |j|
    x = [x,array[j]].min
    break if x * (n-(i-1)) <= ans
    ans = [ans, x * (j - i + 1)].max
  end
end
puts ans
