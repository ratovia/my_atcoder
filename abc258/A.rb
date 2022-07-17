k = gets.to_i

if k >= 60
  k = k - 60
  if k < 10
    puts "22:0#{k}"
  else
    puts "22:#{k}"
  end
else
  if k < 10
    puts "21:0#{k}"
  else
    puts "21:#{k}"
  end
end
