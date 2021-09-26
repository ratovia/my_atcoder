a, b , c = gets.split.map(&:to_i)

flag = true
count = 1
while flag
  x = c * count
  if x >= a && b >= x
    puts x
    flag = false
  end
  count += 1
  if x > b
    puts -1
    break
  end
end
