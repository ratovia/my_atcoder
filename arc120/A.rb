n = gets.to_i

a = gets.split.map(&:to_i)

dp = Array.new(a.length)
dp[0] = a[0]

dp2 = Array.new(a.length)
dp2[0] = a[0]

max = a[0]
0.upto(n-1) do |i|
  max = a[i] if a[i] > max
  if i != 0
    dp[i] = dp[i-1] + a[i]
    dp2[i] = dp2[i-1] + dp[i]
  end
  puts (i+1) * max + dp2[i]
end

# pp dp
# pp dp2