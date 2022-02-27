x1, y1, x2, y2 = gets.split.map(&:to_i)

# if (x1 - x2).abs > 4
#   puts "No"
#   exit
# end
# if (y1 - y2).abs > 4
#   puts "No"
#   exit
# end

pattern = [
  [1, 2],
  [2, 1],
  [2, -1],
  [1, -2],
  [-1, -2],
  [-2, -1],
  [-2, 1],
  [-1, 2]
]


pattern.each do |pat|
  x = pat[0] + x1
  y = pat[1] + y1

  pattern.each do |pat2|
    xk = pat2[0] + x
    yk = pat2[1] + y
    if xk == x2 && yk == y2
      puts "Yes"
      # puts "xk: #{xk}, yk: #{yk}"
      exit
    end
  end
end

puts "No"
