v, a, b, c = gets.split.map(&:to_i)

dp = [a, b, c]
count = 0

vx = v
while true
  current = vx - dp[count]

  unless current >= 0
    break
  end

  count += 1
  if count == 3
    count = 0
  end
  vx = current
end

if count == 0
  puts "F"
elsif count == 1
  puts "M"
else
  puts "T"
end
