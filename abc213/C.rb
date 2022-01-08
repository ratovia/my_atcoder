h, w, n = gets.split.map(&:to_i)

array = n.times.map { gets.split.map(&:to_i) }.transpose

a = array[0].each_with_index.sort.each_with_index.sort_by{|e| e[0][1]}
b = array[1].each_with_index.sort.each_with_index.sort_by{|e| e[0][1]}

n.times do |i|
  puts "#{a[i][1] + 1} #{b[i][1] + 1}"
end
