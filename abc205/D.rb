n , q = gets.split.map(&:to_i)

a = gets.split.map(&:to_i).sort

dp = Array.new(n,0)

a.each_with_index do |ele,i|
  if i == 0
    dp[i] = ele - 1
  else
    dp[i] = dp[i-1] + ele - a[i-1] - 1
  end
end
dp.push(10**18 - a[n-1])
pp dp

a.push(a[-1]+1)
q.times do |i|
  ki = gets.to_i
  index = dp.bsearch_index {|x| x >= ki}
  puts "index: #{index}"

  if index - 1 < 0
    puts 0
  else
    puts ki - dp[index-1]
  end


end
