# require("pry")

n = gets.chomp.split("").map(&:to_i)

k = n.length

res = 100000
flag = false
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

# pp n
# puts k

puts flag ? res : "-1"