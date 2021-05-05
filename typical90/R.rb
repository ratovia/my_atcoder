t = gets.to_i
L,X,Y = gets.split.map(&:to_i)
q = gets.to_i
array = q.times.map {gets.to_i}
require 'pry'
PI = Math::PI
array.each do |ele|
  rem = ele % t
  tx = rem * 1.0 / t
  theta = 360 * tx
  y = 0
  if theta < 180
    x = - Math.sin(theta * (PI / 180)) * L/2
    z = L/2 - Math.cos(theta * (PI / 180)) * L/2
  elsif theta == 180
    x = 0
    z = L
  elsif theta > 180
    theta = theta - 180
    x = Math.sin(theta * (PI / 180)) * L/2
    z = L/2 + Math.cos(theta * (PI / 180))
  end
  disx = (X-x).abs
  disy = (Y-y).abs
  disz = (0-z).abs 
  # binding.pry
  dis = Math.sqrt(disx * disx + disy * disy + disz * disz)
  if dis == 0
    rad = 0
  else
    rad = Math.asin(disz/dis)
  end
  w = rad * 180 / PI
  puts w
end