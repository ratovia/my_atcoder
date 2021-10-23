h,w = gets.split.map(&:to_i)
array = h.times.map { gets.split.map(&:to_i) }


0.upto(h-1) do |i1|
  (i1+1).upto(h-1) do |i2|
    0.upto(w-1) do |j1|
      (j1+1).upto(w-1) do |j2|
        if array[i1][j1] + array[i2][j2] > array[i1][j2] + array[i2][j1]
          puts "No"
          exit
        end
      end
    end
  end
end

puts "Yes"
