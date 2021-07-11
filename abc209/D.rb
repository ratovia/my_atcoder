n, q = gets.split.map(&:to_i)

array = (n-1).times.map {gets.split.map(&:to_i)}

query = q.times.map {gets.split.map(&:to_i)}

graph = Array.new(n) {Array.new}

def dijkstra g, o
  (rec = Proc.new { |g,i,c|
    g[i].each_with_index { |a,j| c[j]=1,c[i]-a].max if c[j]<0 and a>=0 }
    c[i], k, cmin = -c[i], 0, -10**9
    return c if c.all?{ |e| e>=0 }
    c.each_with_index{ |cj, j| k, cmin = j, cj if cmin < cj and cj < 0  }
    return rec.call(g, k, c)
  }).call(g, o, (0..g.length-1).map{ |i| i==o ? 0 : -10**9})
end

# Helper function
def al(g, i, j, w=1)
  g[i][j]=w
  g[j][i]=w
end

g=n.times.collect{ Array.new(n,-1)}

# adding links
array.each do |ele|
  a, b = ele
  al(g, a, b, 1)
end

query.each do |qu|
  start, finish = qu
  costs = dijkstra(g, 0)

  if cost % 2 == 0
    puts "Road"
  else
    puts "Town"
  end
end
dis = []

pp graph
