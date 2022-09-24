array = 10.times.map { gets.chomp.chars }

start = nil
0.upto(10-1) do |i|
  0.upto(10-1) do |j|
    if array[i][j] == "#"
      start = [i,j]
      break
    end
  end
  break if start != nil
end

endle = nil
9.downto(0) do |i|
  9.downto(0) do |j|
    if array[i][j] == "#"
      endle = [i,j]
      break
    end
  end
  break if endle != nil
end

puts "#{start[0]+1} #{endle[0]+1}"
puts "#{start[1]+1} #{endle[1]+1}"
