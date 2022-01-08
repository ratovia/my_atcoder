n = gets.to_i
array = gets.split.map(&:to_i).sort!

def kaijo(num)
  return 1 if num <= 0
  return num * kaijo(num-1)
end

def summ(num)
  ((num-1) * num) / 2
end

def kumi(num)
  return kaijo(num) / kaijo(num - 2) / 2
end

sum = 0
# puts kumi(n)
array.group_by(&:itself).map{|k,v| sum += summ(v.count) }

puts kumi(n) - sum
