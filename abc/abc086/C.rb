# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n = gets.to_i

t = []
x = []
y = []

n.times do ||
  line = gets.split.map(&:to_i)
  t << line[0]
  x << line[1]
  y << line[2]
end

current_time = 0
current_pos = [0,0]
flag = true
t.each_with_index do |time, index|
  move_time = time - current_time
  move_distance = ((current_pos[0] - x[index]) + (current_pos[1] - y[index])).abs
  if move_time % 2 == 0 && move_distance % 2 == 0 && move_distance <= time
  elsif move_time % 2 == 1 && move_distance % 2 == 1 && move_distance <= time
  else 
    flag = false
  end
end

puts flag ? "Yes" : "No"
