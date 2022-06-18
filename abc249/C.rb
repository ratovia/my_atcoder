n, k = gets.split.map(&:to_i)

array = n.times.map { gets.chomp }

# pp array

max = 0
(1 << n).times do |i|
  # p i
  bit = i.to_s(2).rjust(n,'0').split("").map(&:to_i)
  str = ""
  bit.each_with_index do |b,j|
    if b == 1
      str += array[j]
    end
  end

  count = 0
  str.split("").group_by{|c| c}.each do |key,value|
    if value.length == k
      count += 1
    end
  end

  max = count if count > max
end

puts max
