require 'set'
n = gets.to_i
prime = [*2..Math.sqrt(n)]
count = 0

s = Set.new() 
2.upto(Math.sqrt(n)) do |a|
  b = 2
  while true
    k = a ** b
    if k > n
      break
    end
    b += 1
    s.add(k)
  end
end

puts n - s.length

