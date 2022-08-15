n = gets.to_i
array = n.times.map { gets.chomp.split("").map(&:to_i) }

max = "0"
n.times.map do |r_x|
  r_array = array.map{|ele| ele.rotate(r_x)}
  # pp r_array

  n.times.map do |r_y|
    r_r_array = r_array.rotate(r_y)
    # pp r_r_array
    t_max = 0

    tran = r_r_array.transpose
    str_1 = ""
    str_2 = ""
    str_3 = ""
    str_4 = ""
    str_5 = ""
    str_6 = ""
    n.times.map do |k|
      str_1 += r_r_array[0][k].to_s
      str_2 += tran[0][k].to_s
      str_3 += r_r_array[k][k].to_s
      str_4 += r_r_array[0][k].to_s.reverse
      str_5 += tran[0][k].to_s.reverse
      str_6 += r_r_array[k][k].to_s.reverse
    end

    max = [max,str_1,str_2,str_3,str_4,str_5,str_6].max
  end
end

puts max
