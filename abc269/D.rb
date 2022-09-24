n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }



class UnionFind
  attr_accessor :rank, :parent

  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def isEmpty
    pp @parent
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end

class Node
  attr_accessor :x, :y, :index
  def initialize(point, index)
    @x, @y = point
    @index = index
  end

  def isConnect(node)
    x = @x - node.x
    y = @y - node.y

    if (x == -1 && y == -1) || (x == -1 && y == 0) || (x == 0 && y == -1) || (x == 0 && y == 1) || (x == 1 && y == 0) || (x == 1 && y == 1)
      return true
    else
      return false
    end
  end
end

union = UnionFind.new(n)
# union.isEmpty

0.upto(n-1) do |i|
  # puts "i = #{i}(#{array[i][0]} #{array[i][1]})"
  node_i = Node.new(array[i], i)
  0.upto(n-1) do |j|
    next if i == j
    # puts "j = #{j}(#{array[j][0]} #{array[j][1]})"
    node_j = Node.new(array[j], j)
    if node_j.isConnect(node_i)
      union.unite(node_i.index, node_j.index)
    end
  end
end

0.upto(n-1) do |i|
  # puts "i = #{i}(#{array[i][0]} #{array[i][1]})"
  node_i = Node.new(array[i], i)
  0.upto(n-1) do |j|
    next if i == j
    # puts "j = #{j}(#{array[j][0]} #{array[j][1]})"
    node_j = Node.new(array[j], j)
    if node_j.isConnect(node_i)
      union.unite(node_i.index, node_j.index)
    end
  end
end

# node_i = Node.new([2,1], 0)
# node_j = Node.new([1,0], 1)
# puts node_j.isConnect(node_i)

# pp union.parent
puts union.parent.uniq.length
