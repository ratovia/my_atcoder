n, k = gets.split.map(&:to_i)

sum = 0
n.times do |i|
  k.times do |j|
    sum += (i+1) * 100 + (j+1)
  end
end

puts sum