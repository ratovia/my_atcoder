n = gets.to_i
array = (n-1).times.map { gets.split.map(&:to_i) }

memory = Array.new(n, 0)

array.each_with_index do |ele, i|
  ele.each do |vertex|
    memory[vertex-1] += 1
    if memory[vertex-1] == n-1
      puts "Yes"
      exit
    end
  end
end

puts "No"
