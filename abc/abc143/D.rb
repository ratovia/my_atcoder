n = gets.to_i
l = gets.split.map(&:to_i).sort!

ans = 0

0.upto(l.length - 2) do |i|
  (i+1).upto(l.length - 1) do |j|
    a = l[i] + l[j]
    b = l.bsearch_index{ |x| x >= a }
    b = n if b.nil?
    ans += b - j - 1
  end
end

puts ans
