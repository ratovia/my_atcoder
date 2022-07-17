n = gets.to_i
s = gets.chomp.chars

w = gets.split.map(&:to_i)
# pp s
hoge = w.zip(s).sort_by(&:first)



head = 0
tail = n - 1
miss_a = n
miss_b = n
min = miss_a + miss_b
while head <= tail

  center = (head + tail) / 2
  target = hoge[center]
  # target以下の大人の数(失敗の数)
  miss_a = hoge[0..center].map{|x| x[1]}.join.count("1")
  miss_b = hoge[(center+1)..(n-1)].map{|x| x[1]}.join.count("0")
  min = (miss_a + miss_b) if min > (miss_a + miss_b)
  if miss_a <= miss_b # target以下の大人の数(失敗の数) < target以上の子供の数(失敗の数)
    head = center + 1
  else
    tail = center - 1
  end

end

puts n - min + 1
