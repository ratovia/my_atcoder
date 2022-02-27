n = gets.to_i
array = n.times.map { gets.chomp.split("") }
tran = array.transpose
reverse = array.map(&:reverse)
reverse_tran = reverse.transpose
rreverse = reverse.map(&:reverse)
rreverse_tran = rreverse.transpose

# require "pry"
# binding.pry
0.upto(n-6) do |i|
  0.upto(n-6) do |j|
    # pp "#{i}, #{j}"
    # binding.pry
    if array[i][j...j+6].count("#") >= 4
      puts "Yes"
      exit
    end
    if tran[i][j...j+6].count("#") >= 4
      puts "Yes"
      exit
    end

    # if reverse[i][j...j+6].count("#") >= 4
    #   puts "Yes"
    #   exit
    # end
    # if reverse_tran[i][j...j+6].count("#") >= 4
    #   puts "Yes"
    #   exit
    # end

    if rreverse[i][j...j+6].count("#") >= 4
      puts "Yes"
      exit
    end
    if rreverse_tran[i][j...j+6].count("#") >= 4
      puts "Yes"
      exit
    end

    if j < n - 6 + 1 && i+6 < n
      if [array[i][j],array[i+1][j+1],array[i+2][j+2],array[i+3][j+3],array[i+4][j+4],array[i+5][j+5],array[i+6][j+6]].count("#") >= 4
        puts "Yes"
        exit
      end
    end

    if j >= 6 && i+6 < n
      if [array[i][j],array[i+1][j-1],array[i+2][j-2],array[i+3][j-3],array[i+4][j-4],array[i+5][j-5],array[i+6][j-6]].count("#") >= 4
        puts "Yes"
        exit
      end
    end
  end
end

puts "No"
