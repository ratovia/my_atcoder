n = gets.to_i
array = gets.split.map(&:to_i)

p_count = 0
s_count = 0
array.each_with_index do |ele, index|
  if ele == (index+1)
    s_count += 1
  else
    if array[ele-1] == (index+1) && ele < array[ele-1]
      p_count +=1
    end
  end
end

# pp p_count
# pp s_count
puts [*1...s_count].sum + p_count
