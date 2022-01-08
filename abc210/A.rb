n,a,x,y = gets.split.map(&:to_i)

hiki = x - y

if (n - a) > 0
  puts x * n - (n - a) * hiki
else
  puts x * n
end


