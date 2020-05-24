# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a


n = gets.to_i

a = gets.split.map(&:to_i)

ary = a.group_by{|i| i}.map{ |k,v| puts v.length}
pp ary 
pp ary[:"4"]
n.times do |i|
  puts ary["#{i}"].length
end
