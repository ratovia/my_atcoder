n = gets.to_i
@array = n.times.map { gets.split.map(&:to_i) }

@dp = Array.new(n+1, nil)
@dp[0] = 0

def hoge(i)
  return 0 if i == 0
  if @dp[i].nil?
    @dp[i] = 0
    @array[i-1][1..-1].sort.reverse.each do |a|
      @dp[i] += hoge(a)
    end
    @dp[i] += @array[i-1][0]
    return @dp[i]
  else
    return 0
  end
end
# @dp[n] = 0
# @array[-1][1..-1].each do |a|
#   @dp[n] += hoge(a)
# end
@dp[n] = hoge(n)

# pp @dp

puts @dp[n]
