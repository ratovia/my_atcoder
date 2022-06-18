n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

sorted_array = array.sort
count = -1
group_array = array.group_by do |i|
  count+=1
  count%k
end

group_array.map do |k,v|
  v.sort!
end.sort!
# pp group_array

# require "pry"
dp = []
n.times do |h|
  amari = h%k
  shou = h/k
  # puts "#{h} #{amari} #{shou}"
  # binding.pry
  dp.push(group_array[amari][shou])
end

# pp dp


# nk = n - k

# # 0.upto(nk-1) do |i|
# k.times do
#   (nk-1).downto(0) do |i|
#     if array[i] > array[i+k]
#       array[i], array[i+k] = array[i+k], array[i]
#     end
#   end
# end

# puts array.join(" ")
# puts sorted_array.join(" ")
if dp.join(" ") == sorted_array.join(" ")
  puts "Yes"
else
  puts "No"
end
