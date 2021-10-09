@n = gets.to_i
@a = gets.split.map(&:to_i)
@b = gets.split.map(&:to_i)
MOD = 998244353

@dp = Array.new(@n+1)

@dp.each_with_index do |ele,index|
  break if index == @n
  @dp[index+1] = Array.new(@b[index] - @a[index]+1)
end

def hoge(index, cx)
  cx = @a if cx < @a
  @b[index].downto(cx) do |ele|
    if dp[index+1][ele]
      dp[index][ele] = dp[index+1][ele]
    else
      dp[index][ele] = hoge(index+1, ele)
    end
  end
end

hoge(1, @a[0])

puts @dp[0, @a[0]] % MOD
