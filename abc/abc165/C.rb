# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n,m,q = gets.split.map(&:to_i)

line = []
q.times do
  line << gets.chomp.split.map(&:to_i)
end



a = [*1..m].repeated_combination(n).to_a
max_s = 0
a.each do |arr|
  s = 0
  line.each do |l|
    if (arr[l[1]-1] - arr[l[0]-1]) == l[2] 
      s += l[3]
    end
  end
  if max_s < s
    max_s = s
  end
end

puts max_s
