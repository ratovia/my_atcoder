N, D, H = gets.split.map(&:to_i)

array = N.times.map {gets.split.map(&:to_i)}

minh = 100000000
mina = 100000000
mind = 100000000
array.each do |ele|
  d, h = ele
  a = (H - h) * 1.0 / (D - d) 

  if mina > a
    mina = a
    minh = h
    mind = d
  end
end

# puts mina
# puts minh
# puts mind
sas = minh - mina * mind
if sas >= 0
  puts sas
else
  puts 0.0
end