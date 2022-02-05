h, w = gets.split.map(&:to_i)

array = h.times.map { gets.split.map(&:to_i) }

tran = array.transpose

tran.each_with_index do |ele, j|
  ele.each_with_index do |e,index|
    print e
    unless index == ele.length-1
      print " "
    end
  end
  puts
end
