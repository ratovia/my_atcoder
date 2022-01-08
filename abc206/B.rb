n = gets.to_i

sq = Math.sqrt(2 * n).floor

# puts sq

count = sq
flag = false
while true
  sum = (count + 1) * count / 2
  if sum >= n
    puts count
    exit
  else
    count += 1
  end
end
