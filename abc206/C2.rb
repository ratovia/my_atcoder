n = gets.to_i
array = gets.split.map(&:to_i).sort!

def kaijo(num)
  return 1 if num <= 0
  return num * kaijo(num-1)
end

def kumi(num)
  return kaijo(num) / kaijo(num - 2) / 2
end

def summ(num)
  ((num-1) * num) / 2
end


sum = 0
pos = -1

while pos < n
  pos += 1
  t_sum = 1
  # puts "#{array[pos]} #{array[pos+1]}"
  while pos < n && array[pos] == array[pos + 1]
    t_sum += 1
    pos += 1
  end
  sum += summ(t_sum)
end


# pp array
puts kumi(n) - sum
