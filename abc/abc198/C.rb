r,x,y = gets.split.map(&:to_i)

dis = Math.sqrt(x * x + y * y)

if dis == r
  res = 1
elsif dis < r
  res = 2
elsif dis % r == 0
  res = (dis / r).floor
else
  res = (dis / r).floor + 1
end

puts res