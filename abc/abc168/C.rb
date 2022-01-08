# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a
a,b,h,m = gets.split.map(&:to_i)
 
if ((30*h+0.5*m) - 6*m).abs < 180 
  w = ((30*h+0.5*m) - 6*m).abs
else
  w = ((360 - 6*m) + (30*h+0.5*m)).abs
end
 

 
# PI = 3.14159265358979323846264
h = a * Math.sin(w / 180.0 * Math::PI);
bs = a * Math.cos(w / 180.0 * Math::PI);
 
bn = (b - bs).abs
 
c2 = h*h + bn*bn
 
puts Math.sqrt(c2)
