a, b = gets.split.map(&:to_i)

res = []

if a < b
  sum_b = 0
  b.times do |i|
    po = (i+1) * (-2)
    res.push( po )
    sum_b += po 
  end


  sum_a = 0
  a.times do |i|
    po = (i+1) * (2)
    if (i+1) < a 
      res.push( po )
      sum_a += po
    end
  end 

  res.push(sum_b.abs - sum_a) 
else
  sum_a = 0
  a.times do |i|
    po = (i+1) * (2)
    res.push( po )
    sum_a += po 
  end


  sum_b = 0
  b.times do |i|
    po = (i+1) * (-2)
    if (i+1) < b 
      res.push( po )
      sum_b += po
    end
  end 

  res.push(- (sum_a.abs + sum_b)) 
end
puts res.join(" ")