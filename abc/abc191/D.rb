INT = 10000
x,y,r = gets.split.map do |c|
  (c.to_f * INT).round
end

num = 0

@start, @last , @bottom, @top = 0

def cousa_tei(x, r)
  @start = ((x - r) / INT).ceil
  @last = ((x + r) / INT).floor
end
def cousa_taka(y, r)
  r = r * INT
  @bottom = ((y - r) / INT).ceil
  @top = ((y + r) / INT).floor
end


cousa_tei(x, r)
puts @start
puts @last
@start.upto(@last) do |i|
  b = i * INT
  k2 = r ** 2 / INT / INT - (x - b) ** 2 / INT / INT
  puts k2
  k = (Math.sqrt(k2))
  
  cousa_taka(y, k)
  p @bottom
  num += (@top - @bottom + 1)
end

puts num
