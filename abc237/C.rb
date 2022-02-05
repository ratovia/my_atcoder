s = gets.chomp
len = s.length
reverse = s.reverse

flag = false
pos = 0
while s[pos] == "a" && s[-(pos+1)] == "a"
  pos += 1
end
if s[pos] == "a" && s[-(pos+1)] != "a"
  if s[pos..s[-(pos+1)]] == s[pos..s[-(pos+1)]].reverse
    flag = true
  end
elsif s[pos] != "a" && s[-(pos+1)] == "a"
  s.sub!(/^a+/, "")
s.reverse!
s.sub!(/^a+/, "")
  if s[pos..s[-(pos+1)]] == s[pos..s[-(pos+1)]].reverse
    flag = true
  end
elsif s[pos] != "a" && s[-(pos+1)] != "a"
  if s[pos..s[-(pos+1)]] == s[pos..s[-(pos+1)]].reverse
    flag = true
  end
end





# pp s
puts flag ? "Yes" : "No"
