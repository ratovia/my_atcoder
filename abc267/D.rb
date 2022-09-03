n, m = gets.split.map(&:to_i)

array = gets.split.map(&:to_i)

dp = Array.new(n) { Array.new(1, 0)}

pp dp

0.upto(n-m) do |i|
  dp[i][]
end

puts
