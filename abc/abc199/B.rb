n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

a_t = a.max

b_t = b.min

k = b_t - a_t + 1
puts k >= 0 ? k : 0