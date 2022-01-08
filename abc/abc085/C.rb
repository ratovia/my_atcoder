# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#
#
n,y = gets.split.map(&:to_i)


flag = false
n_10000 = -1
n_5000 = -1
n_1000 = -1
(n+1).times do |i|
  (n-i+1).times do |j|
    point = (i)*10000 + (j)*5000 + (n - i - j)*1000
    if point == y
      n_10000 = i
      n_5000 = j
      n_1000 = n - i - j
    end
  end
end

puts "#{n_10000} #{n_5000} #{n_1000}"



