n = gets.chomp

flag = false


n.length.times do |i|
  if n[-1] == "0"
    n.chop!
  else
    break
  end
end


if n == n.reverse
  flag = true
end

puts flag ? "Yes" : "No"