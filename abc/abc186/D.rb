n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }


sum_aoki = 0
sum_taka = 0

a_array = []
array.each do |ele|
  sum_aoki += ele[0]
  sum_taka += ele[1]
  
  ikuika = ele[0] + ele[1] + ele[0]

  a_array.push(ikuika)
end

a_array.sort!.reverse!
sa = sum_aoki

sum = 0
count = 0
if sa < 0
  puts 0
else
  a_array.each do |ele|
    sum += ele
    count += 1
    if sa < sum
      puts count
      break
    end
  end
end