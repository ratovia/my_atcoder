n = gets.to_i
array = n.times.map { gets.chomp.split }

users = []
array.each_with_index do |ele, index|


  sei_flag = true
  mei_flag = true
  users.each do |user|
    if user[0] == ele[0] || user[0] == ele[1]
      user[2] -= 1
      sei_flag = false
    end
    if user[1] == ele[0] || user[1] == ele[1]
      user[2] -= 1
      mei_flag = false
    end
  end

  if sei_flag && mei_flag
    array[index].push(2)
  elsif sei_flag == true && mei_flag == false
    array[index].push(1)
  elsif mei_flag == true && sei_flag == false
    array[index].push(1)
  else
    array[index].push(0)
  end
  users.push(array[index])
end

array.each do |ele|
  if ele[2] == 0
    puts "No"
    exit
  end
end

puts "Yes"
