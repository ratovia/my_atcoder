n = gets.to_i
array = gets.split.map(&:to_i)

loser_num = nil
num_array = [*1..(2**n)]

(2 ** n -1).times do 
  battle = array.shift(2)
  num_battle = num_array.shift(2)
  if battle[0] > battle[1]
    array.push(battle[0])
    num_array.push(num_battle[0])
    loser_num = num_battle[1]
  else
    array.push(battle[1])
    num_array.push(num_battle[1])
    loser_num = num_battle[0]
  end
  # puts loser_num
end 

puts loser_num
