n, a, b = gets.split.map(&:to_i)

_flag = false
(n*a).times do |i|
  flag = _flag
  (n*b).times do |j|
    if flag
      print '#'
    else
      print '.'
    end
    if (j+1) % b == 0
      flag = !flag
    end
  end
  puts
  if (i+1) % a == 0
    _flag = !_flag
  end
end
