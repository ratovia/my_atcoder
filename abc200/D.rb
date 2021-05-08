n = gets.to_i
array = gets.split.map(&:to_i)

array200 = array.map{ |ele| ele % 200 }


p array200

sum_array = []

dp = Array.new(200,[])


array200.each_with_index do |ele, i|
  num = ele % 200
  dp[num] = i
  sum_array.push([i])
end


