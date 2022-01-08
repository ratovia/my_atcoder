# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#
#
n = gets.to_i
card = gets.split.map(&:to_i)

s = 0
card.sort.reverse.each_with_index do |c,i|
  if i%2 == 0
    s += c
  else
    s -= c
  end
end

puts s
