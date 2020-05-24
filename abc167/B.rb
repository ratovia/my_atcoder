# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#
#

a,b,c,k = gets.split.map(&:to_i)


a_num = 0
b_num = 0
c_num = 0

if k - a > 0
  a_num = a
  if (k - a) -b > 0
    b_num = b
    if (k -a -b)-c > 0
      c_num = c

    else
      c_num = k-a-b
    end
  else
    b_num = k-a
  end
else
  a_num = k
end


puts a_num * 1 + c_num * -1
