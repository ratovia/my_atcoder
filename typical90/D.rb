h,w = gets.split.map(&:to_i)

h_cucum = Array.new(h,0)
w_cucum = Array.new(w,0)
array = []

h.times.each do |i|
  line = gets.split.map(&:to_i)
  array.push(line)
  line.each_with_index do |ele, j|
    h_cucum[i] += ele
    w_cucum[j] += ele
  end
end

array.each_with_index do |line,i|
  line.each_with_index do |ele,j|
    array[i][j] = h_cucum[i] + w_cucum[j] - array[i][j]
    print " " if(j != 0)
    print array[i][j]
  end
  puts
end


