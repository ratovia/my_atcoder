a, b , c, d, e, f, x = gets.split.map(&:to_i)

counter = 0
flag = true
takahashi_d = 0
while counter <= x
  if flag
    if counter + a <= x
      counter += a
      takahashi_d += a * b
      flag = false
    else
      takahashi_d += (x - counter) * b
      break
    end
  else
    counter += c
    flag = true
  end
end

flag = true
counter = 0
aoki_d = 0
while counter <= x
  if flag
    if counter + d <= x
      counter += d
      aoki_d += d * e
      flag = false
    else
      aoki_d += (x - counter) * e
      break
    end
  else
    counter += f
    flag = true
  end
end

# pp takahashi_d
# pp aoki_d

if takahashi_d < aoki_d
  puts "Aoki"
elsif takahashi_d == aoki_d
  puts "Draw"
else
  puts "Takahashi"
end
