s = gets.chomp

res = ""
flag = false

s.length.times do |i|
  if s[i] == "R"
    flag = !flag
    next
  end
  
  if flag
    if s[i] == res[-1]
      res = res[0...-1]
    else
      res = res + s[i]
    end
  else
    if s[i] == res[0]
      res = res[1..-1]
    else
      res = s[i] + res
    end
  end
end

if flag
  puts res
else
  puts res.reverse
end