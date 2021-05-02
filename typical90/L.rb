# Disjoint Set Union
class DSU
  def initialize(n = 0)
    # root node: -1 * component size
    # otherwise: parent
    @parent_or_size = Array.new(n, -1)
  end

  attr_accessor :parent_or_size

  def merge(a, b)
    x = leader(a)
    y = leader(b)
    return x if x == y

    x, y = y, x if -@parent_or_size[x] < -@parent_or_size[y]
    @parent_or_size[x] += @parent_or_size[y]
    @parent_or_size[y] = x
  end
  alias unite merge

  def same(a, b)
    leader(a) == leader(b)
  end
  alias same? same

  def leader(a)
    @parent_or_size[a] < 0 ? a : (@parent_or_size[a] = leader(@parent_or_size[a]))
  end
  alias root leader
  alias find leader

  def size(a)
    -@parent_or_size[leader(a)]
  end

  def groups
    (0 ... @parent_or_size.size).group_by{ |i| leader(i) }.values
  end
end

UnionFind        = DSU
UnionFindTree    = DSU
DisjointSetUnion = DSU


h,w = gets.split.map(&:to_i)
Q = gets.to_i
array = Q.times.map { gets.split.map(&:to_i)}

table = Array.new(h) {Array.new(w, 0)}

array.each do |ele|
  if ele[0] == 1
    t, r, c = ele
    table[r-1][c-1] = 1
    
  elsif ele[0] == 2
    t, ra, ca, rb, cb = ele
    next if table[ra][ca] == 0
    next if table[rb][cb] == 0
  end
end

pp table