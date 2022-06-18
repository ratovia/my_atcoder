str = gets.chomp

count = 0
1.upto(str.length) do |i|
  if str[i-1] == str[i]
    count += 1
  else
    print "#{str[i-1]}#{count+1}"
    count = 0
  end
end
puts
