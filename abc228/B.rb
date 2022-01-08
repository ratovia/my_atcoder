n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)


dp = Array.new(n, 0)

target = x
dp[target-1] = 1

while true
  target = a[target-1]
  if dp[target-1] == 1
    break
  else
    dp[target-1] = 1
  end
end

puts dp.sum
