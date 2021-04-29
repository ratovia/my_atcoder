n = gets.to_i
cpx = n.times.map {gets.split.map(&:to_i)}
q = gets.to_i
qx = q.times.map {gets.split.map(&:to_i)}
C1 = [0]
C2 = [0]

1.upto(n) do |i|
  c, px = cpx[i-1]
  if (c == 1)
    C1[i] = px
    C2[i] = 0
  else
    C2[i] = px
    C1[i] = 0
  end
  C1[i] += C1[i-1]
  C2[i] += C2[i-1]
end


q.times do |i|
  l,r = qx[i]
  puts "#{C1[r] - C1[l-1]} #{C2[r] - C2[l-1]}"
end