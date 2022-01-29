n = gets.to_i
a = gets.split.map(&:to_i)

max = 0
flag = true
a.each do |ele|
  if ele >= max
    max = ele
  else
    flag = false
    break
  end
end

a.delete(max)

a.each do |ele|

  print ele
  print " "
end
puts
