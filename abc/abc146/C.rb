a,b,x = gets.split.map(&:to_i)

def d(n)
  n.to_s.length
end

k = (1..(10 ** 9)).bsearch do |n| 
  x < (n * a)  + ( b * d(n))
end

puts k.nil? ? 10 ** 9 : k - 1

