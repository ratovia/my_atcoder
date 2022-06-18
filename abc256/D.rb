n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }.sort_by {|x| [x[0], x[1]]}

current = nil
array.each do |ele|
  l, r = ele
  if current == nil
    current = [l,r]
  else
    if current[1] >= l
      current[1] = r if current[1] < r
    else
      puts current.join(" ")
      current = [l,r]
    end
  end
end

puts current.join(" ") if current
