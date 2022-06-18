n = gets.to_i
array = n.times.map { gets.chomp }

require 'set'
s = Set.new
max_tx = 0
max_sx = nil
max_index = nil


# require 'pry'
array.each_with_index do |ele, index|
  sx, tx= ele.split(" ")
  tx = tx.to_i
  if tx > max_tx
    # binding.pry
    if !s.include?(sx)
      max_tx = tx
      max_sx = sx
      max_index = index
    end
  end
  s.add(sx)
end

puts max_index+1
