array = [3628800, 362880, 40320, 5040, 720, 120, 24, 6, 2, 1]

num = gets.to_i

array.select! { |n| n <= num }

# pp array
count = 0
amari = num
while array.length > 0
  dis = array.shift

  shou = amari / dis
  amari = amari % dis
  if shou > 100
    amari += (shou - 100) * dis
    shou = 100
  end

  count += shou
  # binding.irb
end
puts count
