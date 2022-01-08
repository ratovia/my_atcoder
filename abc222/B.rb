n , px = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)

sum = 0
a.each do |ele|
  if ele < px
    sum += 1
  end
end

puts sum

