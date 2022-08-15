n, k, q = gets.split.map(&:to_i)
pos = gets.split.map(&:to_i)
list = gets.split.map(&:to_i)

list.each do |ele|
  target = pos[ele-1]
  next if target == n || (target+1) == pos[ele]
  pos[ele-1] += 1
end

puts pos.join(" ")
