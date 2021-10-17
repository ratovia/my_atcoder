n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }



sum_time = 0.0
array.each do |ele|
  len, speed = ele

  time = len * 1.0 / speed

  sum_time += time
end

center_time = sum_time / 2.0

# ki
#  -
# ha * ji
sum_time = 0.0
sum_len = 0.0
array.each do |ele|
  len, speed = ele

  time = len * 1.0 / speed

  if sum_time + time < center_time
    sum_time += time
    sum_len += len
  else

    sa_time = center_time - sum_time
    sum_len += sa_time * speed
    break
  end
end


puts sum_len
