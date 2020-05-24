# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

k = gets.to_i
a,b = gets.split.map(&:to_i)

puts (b/k - a/k > 0) || b%k == 0 || a%k == 0 ? "OK" : "NG"
