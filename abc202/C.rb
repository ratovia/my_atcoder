n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

count = 0

dp = Array.new(n+10, 0)

a.each_with_index do |elea, i|
  dp[elea] += 1 
end

c.each_with_index do |elec,j|
  mul = dp[b[elec-1]]
  
  count += mul if mul
end

puts count
