n = gets.to_i

array = n.times.map { gets.split.map(&:to_i) }

flag = false

0.upto(n - 1) do |i|
  i.upto(n - 1) do |j|
    j.upto(n - 1) do |k|
      next if i == j || j == k || k == i
      # puts "i = #{i},j = #{j},k = #{k},"
      x1,y1 = array[i]
      x2,y2 = array[j]
      x3,y3 = array[k]

      dis12 = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
      dis23 = Math.sqrt((x3 - x2) * (x3 - x2) + (y3 - y2) * (y3 - y2))
      dis31 = Math.sqrt((x1 - x3) * (x1 - x3) + (y1 - y3) * (y1 - y3))

      dis_array = [dis12,dis23,dis31].sort
      if ((dis_array[0] + dis_array[1] - dis_array[2]).abs <= 0.000000000001  )
        # puts "pos1 (#{x1},#{y1}) pos2 (#{x2},#{y2}) pos3 (#{x3},#{y3})"
        
        flag = true
      end
    end
  end
end

puts flag ? "Yes" : "No"