n = gets.to_i

array = n.times.map { gets.chomp }

group = array.group_by(&:itself)

max_count = 0
max_name = ""
group.each do |key, value|
  if value.length > max_count
    max_count = value.length
    max_name = key
  end
end

puts max_name
