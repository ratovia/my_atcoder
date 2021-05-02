# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)


n,k = gets.split(" ").map(&:to_i)

a = []
k.times do
  gets.to_i
  a << gets.chomp.split.map(&:to_i)
end

ary = [*1..n]
puts ary - a

# puts n - a.flatten!.uniq!.length

