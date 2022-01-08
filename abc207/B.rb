a,b,c,d = gets.split.map(&:to_i)

blue = a
red = 0

pre_sa = 10 ** 9
count = 0
while blue > (red * d)
  blue += b
  red += c
  count += 1
  # puts "blue: #{blue}"
  # puts "red: #{red}"
  # puts "presa: #{pre_sa}"
  # puts "sa: #{(blue - red * 2)}"
  if pre_sa <= (blue - red * d)
    count = -1
    break
  else
    pre_sa = (blue - red * d).abs
  end
end

puts count
