n, q = gets.split.map(&:to_i)

array = q.times.map { gets.split.map(&:to_i) }

class Node
  attr_accessor :val, :next, :top

  def initialize(val)
    @val = val
    @next = nil
    @top = self
  end

  def print_all
    return if !self

    print self.val
    return if !self.next
    print " "
    self.next.print_all
  end
end

dp = Array.new(n+1)

array.each do |ele|
  type = ele[0]
  if type == 1
    x, y = ele[1], ele[2]
    if dp[x].nil?
      dp[x] = Node.new(x)
    end

    if dp[y].nil?
      dp[y] = Node.new(y)
    end

    dp[x].next = dp[y]
    dp[y].top = dp[x].top
    # 先頭に追加
  elsif type == 2
    x, y = ele[1], ele[2]
    dp[x].next = nil
    dp[y].top = dp[y]
    # 末尾に追加
  elsif type == 3
    # 全て出力
    x = ele[1]
    dp[x].top.print_all
    puts
  end
end
