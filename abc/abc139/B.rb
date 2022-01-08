# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#
#

a,b = gets.split.map(&:to_i)

de = 1
count = 0
while de < b
  count += 1
  de = de -1 + a
end

puts count
