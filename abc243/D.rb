n, x = gets.split.map(&:to_i)
s = gets.chomp

current = x
k = 0
n.times do |i|
  # puts s[i]
  if s[i] == "L"
    k += 1
  elsif s[i] == "U"
    if current % 2 == 1
      if k >= 0
        current = current * (2 ** k)
      else
        current = current / (2 ** -k)
      end
      current = current / 2
      k = 0
    else
      k -= 1
    end
  elsif s[i] == "R"
    if k >= 0
      current = current * (2 ** k)
    else
      current = current / (2 ** -k)
    end
    current = current * 2 + 1
    k = 0
  end
end

if k == 0
  puts current
elsif k >= 0
  puts current * (2 ** k)
else
  puts current / (2 ** -k)
end
