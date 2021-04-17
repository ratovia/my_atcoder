P,W = gets.split().map(&:to_i)

require 'pry'

count = 0
res = 0
win_p = P/100.00
lose_p = 1-P/100.00
while W > count
# if count == 2
  sum_p = 0
  (1 << count).times do |i|
    [0, 1].repeated_permutation(i).each do |bit| # <= 0000
      coin = 0
      mul_p = 1
      bit.each do |j|
        if j == 1
          mul_p = mul_p * win_p
          coin += (W - 1)
        else
          mul_p = mul_p * lose_p
          coin -= 1
        end
      end
      # binding.pry
      if coin > 0
        sum_p += mul_p
      end
    end
  end
  if sum_p > 0.5
    res = count
  end
  count += 1
end

if res == 0
  puts -1
else
  puts res
end