a,b = gets.split.map(&:to_i)

asum = a.to_s.split("").map(&:to_i).sum
bsum = b.to_s.split("").map(&:to_i).sum

puts asum > bsum ? asum : bsum