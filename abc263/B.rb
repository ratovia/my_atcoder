n = gets.to_i
array = gets.split.map(&:to_i)

child = n
count = 0

while true
  # puts child
  parent = array[child-2]
  count += 1
  if parent == 1
    break
  end
  child = parent
end

puts count
