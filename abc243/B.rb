n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a_s = a.sort
b_s = b.sort

ans1 = 0
ans2x = 0
n.times do |i|
  if a[i] == b[i]
    ans1 += 1
  end
end

ans2x = (a & b).length

puts ans1
puts ans2x - ans1
