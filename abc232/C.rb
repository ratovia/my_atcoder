n,m = gets.split.map(&:to_i)

arrayAB = m.times.map { gets.split.map(&:to_i) }
arrayCD = m.times.map { gets.split.map(&:to_i) }

@G = Array.new(m+1) { Array.new() }

arrayAB.each do |ele|
  a, b = ele
  @G[a].push(b)
  @G[b].push(a)
end

pp @G

@G2 = Array.new(m+1) { Array.new() }

arrayCD.each do |ele|
  c,d= ele
  @G2[c].push(d)
  @G2[d].push(c)
end

pp @G2

n.times do |i|
  @G[i]
end
