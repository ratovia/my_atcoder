n , k = gets.split.map(&:to_i)

array = n.times.map { gets.split.map(&:to_i) }

array.each_with_index do |element,index|
  sum = element.sum
  array[index].push(sum)
end

trans_array = array.transpose

target = trans_array[-1].sort.reverse[k-1]

# binding.irb
trans_array[-1].each do |ele|
  if target > ele + 300
    puts "No"
  else
    puts "Yes"
  end
end
