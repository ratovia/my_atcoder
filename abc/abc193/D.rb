T = gets.to_i
array = T.times.map { gets.split.map(&:to_i) }

array.each do |ele|
  X,Y,P,Q = ele

  X + Y 
  