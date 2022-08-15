a ,b ,d  = gets.split.map(&:to_i)

theta = d / 180.0 * Math::PI
x = a * Math.cos(theta) - b * Math.sin(theta)
y = a * Math.sin(theta) + b * Math.cos(theta)

puts "#{x} #{y}"
