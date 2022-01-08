n , m = gets.split.map(&:to_i)

array = n.times.map { gets.split.map(&:to_i) }

start = array[0][0]

start_array = array[0]

start_array.each_with_index do |num, i|
  if num != start + i
    puts "No"
    exit
  end
end

amari = start_array.map do |ele|
  (ele-1) % 7
end

sorted_amari = amari.sort

amari.each_with_index do |ele, index|
  if ele != sorted_amari[index]
    puts "No"
    exit
  end
end

array.each_with_index do |x, i|
  sum = x.sum

  if sum != m * (start + (7*i) + start + (7*i) + m - 1) / 2
    puts "No"
    exit
  end
end

trans = array.transpose

trans.each_with_index do |x, i|
  sum = x.sum

  if sum != n * (start+i + start+i + (7*(n-1))) / 2
    puts "No"
    exit
  end
end

puts "Yes"
