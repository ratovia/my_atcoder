# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a


k = gets.to_i

s = gets.chomp


if s.length > k
  puts "#{s.slice(0,k)}..."
else
  puts s
end
