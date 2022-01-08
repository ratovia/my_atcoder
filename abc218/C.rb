n = gets.to_i
s = n.times.map { gets.chomp.split("") }
t = n.times.map { gets.chomp.split("") }


# pp s
# pp t

EMPTY =

def delete_dot(array)
  (array.length-1).downto(0) do |i|
    if array[i].join() == '.' * array[i].length
      array.delete_at(i)
    else
      break
    end
  end
  return array
end

def rotate_90(array)
  array.map(&:reverse).transpose
end

s = delete_dot(s)
t = delete_dot(t)
s = rotate_90(s)
t = rotate_90(t)
s = delete_dot(s)
t = delete_dot(t)
s = rotate_90(s)
t = rotate_90(t)
s = delete_dot(s)
t = delete_dot(t)
s = rotate_90(s)
t = rotate_90(t)
s = delete_dot(s)
t = delete_dot(t)

# pp s
# pp t

def check(s, t)
  flag = true
  if s.length != t.length
    flag = false
  else
    s.each_with_index do |ele,index|
      str_s = s[index].join
      str_t = t[index].join
      if str_s != str_t
        flag = false
        break
      end
    end
  end
  flag
end

fflag = false
count = 0
while fflag == false && count < 4
  fflag = true if check(s,t)
  t = rotate_90(t)
  count += 1
end

puts fflag ? "Yes" : "No"
