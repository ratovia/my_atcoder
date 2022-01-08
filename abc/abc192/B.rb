s = gets.chomp.split("")

flag = false
s.each_with_index do |ele, i|
  if i % 2 == 0
    if /[[:upper:]]/.match(ele)
      flag = true
    end
  else
    if /[[:lower:]]/.match(ele)
      flag = true
    end
  end
end


puts flag ? "No" : "Yes"