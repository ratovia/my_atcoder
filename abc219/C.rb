x = gets.chomp
n = gets.to_i
s = n.times.map { gets.chomp }

array = []
s.each_with_index do |str,index|
  re_str = str.tr(x, "a-z")
  hash = {str: str, re_str: re_str, index: index}
  array.push(hash)
  # pp hash
end

array.sort_by!{|e| e[:re_str]}

array.each do |ele|
  puts s[ele[:index]]
end

b
a
ac
ab
abc
