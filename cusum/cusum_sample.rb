w = [4,5,2,1,6,4,2,3,2]
section = [
  [1,3],
  [5,7]
]
s = Array.new(w.length+1)

s[0] = 0

0.upto(w.length-1) do |i|
  s[i+1] = s[i] + w[i]
end

# もしくは
# 1.upto(w.length) do |i|
#   s[i] = s[i-1] + w[i-1]
# end

max = 0
section.each do |first, second|
  if s[second+1] - s[first] > max
    max = s[second+1] - s[first]
  end
end

puts max
# max => 9