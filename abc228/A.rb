s, t, x = gets.split.map(&:to_i)


if s > t
  t = t + 24
  x = x + 24 if s > x
  if t > x && s <= x
    puts "Yes"
  else
    puts "No"
  end
else
  if t > x && s <= x
    puts "Yes"
  else
    puts "No"
  end
end
