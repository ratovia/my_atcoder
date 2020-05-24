# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

n,a,b = gets.split.map(&:to_i)

sum = 0
n.times do |i|
  num = (i+1).to_s.split("").map { |s| s.to_i }.inject(:+)
  if a <= num && num <= b
    sum += i+1
  end
end

puts sum
