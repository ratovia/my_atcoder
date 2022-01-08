# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#

s = gets.chomp

t = gets.chomp

if s == t.slice(0, t.length-1)
  puts "Yes"
else
  puts "No"
end
