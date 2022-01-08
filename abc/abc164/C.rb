# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a

n = gets.to_i

array = [*1..n].map { |_| gets.chomp }

puts array.uniq.length
