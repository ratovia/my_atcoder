array = 4.times.map { gets.split.map(&:to_i) }

(1 << 16).times do |i|
  # p i
  bit = i.to_s(2).rjust(16,'0').split("").map(&:to_i)
  # pp bit
  bit.each do |j|
    if 
  end
  # sum = 0
  # count0 = 0
  # bit.each_with_index do |b,j|
  #   if b == 1
  #     sum += n[j]
  #   else
  #     count0 += 1
  #   end
  # end
  # if sum != 0 && sum % 3 == 0
  #   # binding.pry
  #   if count0 <= res
  #     res = count0
  #     flag = true
  #   end
  # end
  # # p bit
end
