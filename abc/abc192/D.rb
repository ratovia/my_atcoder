# x = gets.chomp.split("").map(&:to_i)
# min = x.max + 1
# m = gets.to_i


# res_num = 0
# while true
#   num = 0
#   count = 0
#   (x.length - 1).downto(0) do |i|
#     num += min ** count * x[i]
#     count += 1
#   end 
#   break if num > m
#   res_num += 1
#   min += 1
# end

# puts res_num
x = gets.chomp.split("").map(&:to_i)
min = x.max + 1
m = gets.to_i


res_num = 0
diver = x[0] / m
num = 0
count = 0
(x.length - 1).downto(0) do |i|
  num += diver ** count * x[i]
  count += 1
end 

if num > m
  puts diver - min + 1 - 1
else
  puts diver - min + 1
end