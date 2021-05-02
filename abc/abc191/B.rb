n, x= gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.each_with_index do |ele, i|
  if ele != x
    print "#{ele}"
    if i != (n - 1)
      print " "
    end
  end
end

puts
