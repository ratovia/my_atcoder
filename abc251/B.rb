n, w = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort


require 'set'
s = Set.new
if n >= 3
  0.upto(n-1) do |i|
    if array[i] <= w
      s.add(array[i])
    else
      break
    end
    (i+1).upto(n-1) do |j|
      if array[j] <= (w - array[i])
        s.add(array[i] + array[j])
      else
        break
      end
      (j+1).upto(n-1) do |k|
        if array[k] <= (w - array[i] - array[j])
          s.add(array[i] + array[j] + array[k])
        else
          break
        end
      end
    end
  end
elsif n == 2
  if array[0] <= w
    s.add(array[0])
  end
  if array[1] <= w
    s.add(array[1])
  end
  if (array[0] + array[1]) <= w
    s.add(array[0] + array[1])
  end
elsif n == 1
  if array[0] <= w
    s.add(array[0])
  end
end

puts s.length
