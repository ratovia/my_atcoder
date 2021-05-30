n = gets.to_i

array = (2*n).times.map { gets.split }
pp array

c_array = array.transpose[1]

c_hash = c_array.group_by {|c| c}

pp c_hash
r_num = c_hash["R"]&.length || 0
g_num = c_hash["G"]&.length || 0
b_num = c_hash["B"]&.length || 0

r_num = r_num % 2 == 0
g_num = g_num % 2 == 0
b_num = b_num % 2 == 0

if !r_num
  