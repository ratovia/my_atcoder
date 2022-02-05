n = gets.to_i

s = gets.chomp

array = []
stack = [0]
tmp = []
prev = true
n.times do |index|
  if s[index] == "R"
    array.push(stack.pop)
    stack.push(index+1)
  else
    stack.push(index+1)
  end
end


res = array + stack.reverse
res.compact!
puts res.join(" ")
