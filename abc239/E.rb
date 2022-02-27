n, q = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

ab = (n-1).times.map { gets.split.map(&:to_i) }
vk = q.times.map { gets.split.map(&:to_i) }

@G = Array.new(n+1) { Array.new() }

@G[0] = [1]
ab.each do |ele|
  a, b = ele
  if @G[a].empty?
    @G[b].push(a)
  else
    @G[a].push(b)
  end
end

pp @G
