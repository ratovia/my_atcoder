n = gets.to_i
A = gets.split.map(&:to_i).sort!
q = gets.to_i

class Array
  #二分探索(同値連続はインデクス不定となる)
  #見つからないとき=負の値となり、~index で挿入位置になる
  def binary_search(value, from = 0, to = self.size)
    low = from
    high = to - 1
    while low <= high
      mid = (low + high) / 2
      if self[mid] < value
        low = mid + 1
      elsif self[mid] > value
        high = mid - 1
      else
        return mid
      end
    end
    -(low + 1) #見つからない(~index で挿入位置)
  end

  #指定した値以上の先頭のインデクスを返す
  def lower_bound(value, from = 0, to = self.size)
    low = from
    high = to
    while low < high
      mid = (low + high) / 2
      if self[mid] < value
        low = mid + 1
      else
        high = mid
      end
    end
    low
  end

  #指定した値より大きい先頭のインデクスを返す
  def upper_bound(value, from = 0, to = self.size)
    low = from
    high = to
    while low < high
      mid = (low + high) / 2
      if self[mid] <= value
        low = mid + 1
      else
        high = mid
      end
    end
    low
  end

end
def chmin(a, b) a < b ? a : b end
INF = 10 ** 9
q.times do |j|
  b = gets.to_i
  ans = INF
  dis = A.upper_bound(b)
  ans = chmin(ans, A[dis] - b) if(dis != A.size) 
  ans = chmin(ans, b - A[dis-1]) if(dis != 0) 
  puts ans
end
