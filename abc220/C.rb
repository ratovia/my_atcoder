n = gets.to_i
a = gets.split.map(&:to_i)
x = gets.to_i


1.upto(a.length-1) do |i|
  a[i] += a[i-1]
end

shou = x / a[-1]
amari =  x % a[-1]

index = a.bsearch_index { |x| x > amari }


puts n * shou + index + 1
