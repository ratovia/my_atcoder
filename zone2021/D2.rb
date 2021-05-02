s = gets.chomp.bytes

res = []
flag = false

s.each_with_index do |ele, index|
  if ele == 82
    flag = !flag
    next
  end

  if flag
    if ele == res[-1]
      res.pop
    else
      res << ele
    end
  else
    if ele == res[0]
      res.shift
    else
      res.unshift(ele)
    end
  end
end

if flag
  puts res.map(&:chr).join
else
  puts res.reverse.map(&:chr).join
end