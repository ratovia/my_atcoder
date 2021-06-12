n,m = gets.split.map(&:to_i)
require "set"
road = m.times.map { gets.split.map(&:to_i) }.sort!.reverse!

dp = Array.new(n) {Set.new}

dp.each_with_index do |ele,index|
  dp[index].add(index)
end

road.each_with_index do |ele, index|
  x,y = ele
  x -= 1
  y -= 1

  dp[x].add(y)

  dp.each do |ele3|
    if ele3.include?(x)
      ele3.add(y)
    end
  end
  dp[y].each do |ele2|
    dp[x].add(ele2)
  end
end

# pp dp


sum = 0
dp.each do |s|
  sum += s.length
end
puts sum
  

