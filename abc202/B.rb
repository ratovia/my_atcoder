s = gets.chomp.reverse

s.length.times do |i|
  if s[i] == '6'
    print '9'
  elsif s[i] == '9'
    print '6'
  else
    print s[i]
  end
end
puts
