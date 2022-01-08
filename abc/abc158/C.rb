# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
#
#

a,b = gets.split.map(&:to_i)

res = -1
1000.times do |i|
  if (0.08*(i+1)).floor == a && (0.1*(i+1)).floor == b
    res = i+1
    break;
  end
end

puts res
