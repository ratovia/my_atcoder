s1 = gets.chomp.chars
s2 = gets.chomp.chars
s3 = gets.chomp.chars
 
unique_array = (s1 + s2 + s3).uniq
 
char_length = unique_array.length
if char_length > 10
  puts 'UNSOLVABLE'
  exit
end
 
 
hash = {}
unique_array.each_with_index do |ele, id|
  hash[ele.to_sym] = id
end
 
 
s1_c = s1.map{|c| hash[c.to_sym]}
s2_c = s2.map{|c| hash[c.to_sym]}
s3_c = s3.map{|c| hash[c.to_sym]}
[0,1,2,3,4,5,6,7,8,9].permutation(char_length) do |line|
  next if line[s1_c[0]] * line[s2_c[0]] * line[s3_c[0]] == 0
  next if (line[s1_c[-1]] + line[s2_c[-1]]) % 10 != line[s3_c[-1]]

  s1_i = s1_c.map do |ele|
    line[ele]
  end.join.to_i
  s2_i = s2_c.map do |ele|
    line[ele]
  end.join.to_i
  s3_i = s3_c.map do |ele|
    line[ele]
  end.join.to_i

  if (s1_i + s2_i) == s3_i
    puts s1_i
    puts s2_i
    puts s3_i
    exit
  end
end
puts 'UNSOLVABLE'