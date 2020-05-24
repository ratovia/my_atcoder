# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

n = gets.to_i
a = gets.chomp.split().map(&:to_i)

i = 0
while true
  if a.all?(&:even?)
    i += 1
    a.map! {|x| x/2}
  else
    break
  end
end
puts i
