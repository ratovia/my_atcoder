# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }


t = gets.to_i

array = []
t.times do |i|
  array << gets.split.map(&:to_i)
end

pp array
