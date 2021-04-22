n = gets.to_i

exit if n % 2 != 0


res = []
(1 << n).times do |i|
  bit = i.to_s(2).rjust(n,'0')
  stack = 0
  (n-1).downto(0) do |j|
    if (i & (1 << j)) == 0
      stack += 1
    else
      stack -= 1
    end
    break if stack < 0
  end

  if stack == 0
    res.push(bit.gsub(/(0|1)/, "0" => "(", "1" => ")"))
  end

end

puts res

# (1 << n).times do |i|
#   pp i.to_s(2).rjust(n,'0').split("").map(&:to_i)
#   (n-1).downto(0) do |j|
#     binding.pry
#   end
# end 