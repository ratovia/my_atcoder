n = gets.to_i
array = gets.split.map(&:to_i)

s = Array.new(array.length+1)
max_pos = Array.new(array.length+1)

s[0] = 0# 累積わ
max_pos[0] = 0 # [0,0,2,2,2]
max_c = 0 # 2
0.upto(array.length-1) do |i|
  s[i+1] = s[i] + array[i] 
  
  if max_c <= s[i+1]
    max_pos[i+1] = s[i+1] 
    max_c = max_pos[i+1]
  else
    max_pos[i+1] = max_pos[i]
  end
  
end


pos = 0 
# p s
# p max_pos

sum = 0
pre_sum = 0
max = 0
s.each_with_index do |ele,index|
  sum += ele

  r_sum = sum >= (pre_sum + max_pos[index]) ? sum : (pre_sum +  max_pos[index])
  if r_sum >= max
    max = r_sum
  end
  pre_sum += ele
end

puts max