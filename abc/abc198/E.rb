require 'set'
n = gets.to_i
@c = gets.chomp.split.map(&:to_i)

@color = Array.new(10 ** 5 + 1, 0)
@g = Array.new(n) { [] }
(n - 1).times do
  a, b = gets.chomp.split.map(&:to_i)
  @g[a - 1] << b - 1
  @g[b - 1] << a - 1
end


@set = Set.new()
@res = []
def dfs(node)
  @set.add(node)
  @color[@c[node]] += 1
  @res.push(node + 1) if @color[@c[node]] == 1
  @g[node].each do |ele|
    dfs(ele) if !@set.include?(ele)
  end
  @color[@c[node]] -= 1
  return node
end

dfs(0)

puts @res.sort!