n = gets.to_i
array = gets.split.map(&:to_i).sort!.reverse!

obunA = 0
obunB = 0

(1 << n).times do |i|
  bit = i.to_s(2).rjust(k,'0').split("").map(&:to_i)




(1 << k).times do |i|
  # p i
  bit = i.to_s(2).rjust(k,'0').split("").map(&:to_i)
  sum = 0
  count0 = 0
  bit.each_with_index do |b,j|
    if b == 1
      sum += n[j]
    else
      count0 += 1
    end
  end
  if sum != 0 && sum % 3 == 0
    # binding.pry
    if count0 <= res
      res = count0
      flag = true
    end
  end
  # p bit
end