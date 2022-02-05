n = gets.to_i
a = gets.split.map(&:to_i)


dp = [0, 360]

current = 0
a.each do |ele|
  current += ele
  if current > 360
    current -= 360
  end
  dp << current
end

dp.sort!

max = 0
1.upto(dp.length - 1) do |i|
  if max < dp[i] - dp[i - 1]
    max = dp[i] - dp[i - 1]
  end
end

puts max
