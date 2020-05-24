# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a


n = gets.to_i


a = n % 10

if a == 0 || a == 1 || a == 6 || a == 8
  puts "pon"
elsif a == 3
  puts "bon"
else
  puts "hon"
end
