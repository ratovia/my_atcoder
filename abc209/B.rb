n,x = gets.split.map(&:to_i)

array = gets.split.map(&:to_i)

sum = array.sum

if n % 2 == 0
  sum -= n/2
else
  sum -= (n-1)/2
end

if x >= sum
  puts "Yes"
else
  puts "No"
end
