n = gets.to_i
array = gets.split.map(&:to_i).sort!.reverse!

obunA = 0
obunB = 0

array.each do |ele|
  if obunA <= obunB
    obunA += ele
  else
    obunB += ele
  end
end

min = obunA > obunB ? obunA : obunB


obunA = array[0] + array[-1]
obunB = array[1..-2].sum

max = [obunA, obunB].max
min = max if min > max

1.upto(n-2) do |i|
  obunA += array[i]
  obunB -= array[i]

  max = [obunA, obunB].max
  min = max if min > max
end

puts min