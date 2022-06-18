n, k, x = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort.reverse

temp = []
zan = k

flag = true
array.each do |ele|
  if !flag
    temp << ele
    next
  end
  siyou = ele / x
  if zan >= siyou
    zan -= siyou
    temp << ele % x
  else
    temp << ele - zan * x
    zan = 0
    flag = false
  end
end

# pp temp
# pp zan
if zan == 0
  puts temp.sum
else
  temp.sort!.reverse!
  temp.shift(zan)
  puts temp.sum
end
