n = gets.to_i

c = gets.split.map(&:to_i).sort!

MOD = 10 ** 9 + 7

count = 1
c.each_with_index do |ele,index|
  count *= ele - index
  count = count % MOD
end

puts count
