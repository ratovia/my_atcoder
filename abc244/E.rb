n, m ,@k, s, t, x = gets.split.map(&:to_i)
array = m.times.map { gets.split.map(&:to_i) }

mod = 998244353

@G = Array.new(n+1){Array.new}

array.each do |ele|
  u, v = ele
  @G[u].push(v)
  @G[v].push(u)
end

pp @G

def set_array
  a = Array.new(k,nil)
  a[0] = s
  a[k-1] = t
end


def dfs(index, st)
  len = @G[st].length

  if len == 0
    return 0
  elsif index == k-1
    count = 0
    @G[st].each do |sk|
      if @G[sk].includes?(t)
        count += 1
      end
    end
    return count
  else
    return len * dfs(index+1) % mod
  end
end

res = dfs(0, s)

puts res % mod
