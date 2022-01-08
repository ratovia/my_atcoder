n,m = gets.split.map(&:to_i)
array = m.times.map { gets.split.map(&:to_i) }

@G = Array.new(n+1) { Array.new() }

array.each do |ele|
  a, b, c = ele
  @G[a].push([b,c])
end

pp @G

def dijkstra g, o
  (rec = Proc.new { |g,i,c|
    g[i].each_with_index { |a,j| c[j]=1,c[i]-a].max if c[j]<0 and a>=0 }
    c[i], k, cmin = -c[i], 0, -10**9
    return c if c.all?{ |e| e>=0 }
    c.each_with_index{ |cj, j| k, cmin = j, cj if cmin < cj and cj < 0  }
    return rec.call(g, k, c)
  }).call(g, o, (0..g.length-1).map{ |i| i==o ? 0 : -10**9})
end

# s == 探している場所
def f(s,t,k)
  return 0 if @G[s].length == 0

  count = 0
  @G[s].each do |ele|
    pos, ti = ele
    if pos > k
      count += 0
      next
    end
    if s == pos
      count += ti
    else
      additional = s > pos ? f(pos,t,k) : 0
      count += ti + additional
    end
  end
  return count
end


count = 0
1.upto(n) do |s|
  1.upto(n) do |t|
    1.upto(n) do |k|
      if s != t

        count += f(s,t,k)
      end
    end
  end
end

puts count
