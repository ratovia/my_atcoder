n = gets.to_i

xn = gets.split.map(&:to_i)
cn = gets.split.map(&:to_i)

ss = xn.zip(cn).sort_by{|x,y| x[2]<=>y[2]}

pp ss

@g = Array.new(n) { [] }
(n).times do |i|
  @g[xn[i]-1] << i
end

pp @g
require 'pry'
count = 0
dp = []
queue = cn

# while queue.length > 0 do
#   target = queue.shift
#   target
# end
cn.each_with_index do |c,i|
  fukai_index = @g[i]
  fukai = fukai_index - dp
  sum_j = fukai.map do |j|
    cn[j]
  end.sum
  # binding.pry

  if c < sum_j
    count += c
    dp << i
  end
end
puts count
