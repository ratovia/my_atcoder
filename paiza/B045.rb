m, n = gets.split.map(&:to_i)

array_p = []
array_m = []

1.upto(99) do |i|
  i.upto(99) do |j|
    if (i + j) <= 99
      array_p.push("#{i} + #{j} =") 
    end
    if (i - j) >= 0
      array_m.push("#{i} - #{j} =") 
    end
  end
end 


m.times do |i|
  t = array_p.pop()
  puts t
end

n.times do |i|
  t = array_m.pop()
  puts t
end
