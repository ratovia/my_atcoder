n,k = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }

def middle(array)
  len = array.length
  len % 2 == 0 ? array[(len / 2) - 1] : array[len / 2]
end

