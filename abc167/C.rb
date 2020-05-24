# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#


def judge_array(ary,m,x)
  flag = true
  m.times do |k|
    if ary[k+1] < x
      flag = false
    end
  end

  return flag
end
n,m,x = gets.split.map(&:to_i)

ary = n.times.map{gets.split.map(&:to_i)}


ary.sort_by! {|x| x[0]}.reverse!
return_num = -1
sum_array = [0,0,0,0]
ary.each do |data|

  sum_array.each_with_index do |_,i|
    sum_array[i] = sum_array[i] + data[i]
  end
  if judge_array(data,m,x)
    return_num = sum_array[0]
    break
  end
end

 pp ary

 pp sum_array

puts return_num
