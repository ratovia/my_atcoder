n = gets.to_i

a = gets.split.map(&:to_i).sort!

def chmin(a, b) a < b ? a : b end

min = a[0] 
a.each do |x|
  kk = x % min
  if kk != 0
    min = chmin(min, kk)
  end
end

puts min



