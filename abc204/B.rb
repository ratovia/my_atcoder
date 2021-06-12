n = gets.to_i
array = gets.split.map(&:to_i)

sum = 0
array.each do |ele|
  if ele > 10
    sum += ele - 10
  end
end

puts sum