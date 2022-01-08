n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort!
b = gets.split.map(&:to_i).sort!

min = Float::INFINITY

if a[0] < b[0]
  head = a.shift
  pre_type = 0
else
  head = b.shift
  pre_type = 1
end
pre = head

while a.length != 0 || b.length != 0
  if a.length == 0
    head = b.shift
    type = 1
    min = head- pre if min > head - pre && pre_type != type
    next
  end
  if b.length == 0
    head = a.shift
    type = 0
    min = head- pre if min > head - pre && pre_type != type
    next
  end
  if a[0] < b[0]
    head = a.shift
    type = 0
    min = head- pre if min > head - pre && pre_type != type
  elsif a[0] > b[0]
    head = b.shift
    type = 1
    min = head- pre if min > head - pre && pre_type != type
  else
    head = a.shift
    type = 0
    min = 0
  end
  pre = head
  pre_type = type
end

puts min
