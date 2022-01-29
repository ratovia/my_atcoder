n = gets.to_i
s = gets.chomp

@code = s.codepoints


class Array
  def swap!(a, b)
    raise ArgumentError unless a.between?(0, self.count-1) && b.between?(0, self.count-1)

    self[a], self[b] = self[b], self[a]

    self
  end

  def swap(a, b)
    self.dup.swap!(a, b)
  end
end

def hoge(left, right)
  @code[left], @code[right] = @code[right], @code[left]
  bubun = @code[(left+1)..(right-1)]
  min = bubun.rindex(bubun.min)
  return unless min
  min += left + 1
  while @code[min] == @code[left+1]
    left += 1
  end
  if (min - left + 1 + 1) >= 2
    hoge((left+1), min)
  end
end

min = @code.rindex(@code.min)
hoge(0, min) if min > 0

puts @code.map(&:chr).join
