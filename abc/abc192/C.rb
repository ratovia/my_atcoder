n, k = gets.split.map(&:to_i)



def f(x)
  x1 = x.to_s.split("")
  b = x1.sort.reverse.join.to_i
  c = x1.sort.join.to_i
  b - c
end



a = Array.new(k+1, 0)
a[0] = n
1.upto(k) do |i|
  a[i] = f( a[i-1] )
end

pp a[k]