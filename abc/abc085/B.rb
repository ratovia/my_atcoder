# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#

n = gets.to_i

ary = []
n.times do ||
  ary << gets.to_i
end
puts ary.uniq.length

