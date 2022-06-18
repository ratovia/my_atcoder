n = gets.to_i

array = Array.new(n) { Array.new(n+1,nil) }


n.times do |i|
  array[i][0] = 1
  array[i][(i)]= 1
  if i > 1
    1.upto(i-1) do |j|
      array[i][j] = array[i-1][j-1] + array[i-1][j]
    end
  end
end

# pp array
array.each do |ele|
  puts ele.compact.join(" ")
end
