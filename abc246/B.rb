a, b = gets.split.map(&:to_i)

sha = Math.sqrt(a * 1.0 * a + b * b)

x = a * 1.0 / sha

y = b * 1.0 / sha


puts "#{x} #{y}"
