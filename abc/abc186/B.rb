n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }



len = array.length
count = 0
0.upto(n-2) do |i|
  (i+1).upto(n-1) do |j|
    x1,y1 = array[i]
    x2,y2 = array[j]
    quo = (y2 - y1).to_f / (x2 - x1).to_f
    # puts quo if quo >= -1 && quo <= 1
    if quo >= -1 && quo <= 1
      # p "#{i}, #{j} "

      count += 1
    end
  end
end

puts count 