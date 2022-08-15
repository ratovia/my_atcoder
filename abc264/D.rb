s = gets.chomp.chars

atcoder = { "a" => 0, "t"=> 1, "c"=> 2, "o"=> 3, "d"=> 4,"e"=> 5, "r" => 6 }

s.map! do |ele|
  atcoder[ele]
end

# pp s



def select_sort(ary)
  count = 0
  (0...ary.length).each do |i|
    min = ary[i]
    min_position = i
    ((i+1)...ary.length).each do |j|
      if min > ary[j]
        min = ary[j]
        min_position = j
        count += 1
      end
    end
    tmp = ary[i]
    ary[i] = min
    ary[min_position] = tmp
  end
  return count
end

def bubble_sort(ary)
  count = 0
  (1...ary.length).each do |i|
    (i...ary.length).reverse_each do |j|
      if ary[j - 1] > ary[j]
        tmp = ary[j - 1]
        ary[j - 1] = ary[j]
        ary[j] = tmp
        count += 1
      end
    end
  end
  return count
end

def InsertionSort(array)
  len = array.length
  count = 0

  (1..(len-1)).each do |i|
    tmp = array[i]
    j = i - 1

    while j >= 0
      if tmp < array[j]
        array[j], array[j+1] = array[j+1], array[j]
        count += 1
      end
      j -= 1
    end
  end
  return count
end

# pp [bubble_sort(s.dup), select_sort(s.dup), InsertionSort(s.dup)]
puts [bubble_sort(s.dup)].min
