n = gets.to_i
array = gets.split.map(&:to_i).reverse

base = 0
array.each_with_index do |i,index|
  base += i
  if base >= 4
    puts n - index
    exit
  end
end
puts 0
