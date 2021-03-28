n, m = gets.split.map(&:to_i)

table = n.times.map { gets.chomp.split("") }
target = m.times.map { gets.chomp }

flag = false
j = 1
table_r = []
(n-1).downto(-(n-1)) do |i|
  array = []
  flag = true if i == 0
  # j = flag ? j - 1 : j + 1

  k = n - i.abs

  0.upto(k-1) do |l|

    m = i.abs + l
    if flag 
      array.push(table[m][l])
    else
      array.push(table[l][m])
    end
  end
  table_r.push(array)
end

pp table_r
flag = false
ans = []
table_r.each_with_index do |t_r,index|

  if index > n
    flag = true
    kl = index - n
  end
  str = t_r.join()
  target.each do |tar|
    pos_45 = str.index(tar)
    if pos_45
      puts "tar: #{tar}"
      puts "index: #{index}"
      puts "pos_45: #{pos_45}"
      if index > n - 1
        pos_x = index - n + pos_45 + 1
        pos_y = pos_45 + 2
      else
        pos_x = n - index + pos_45
        pos_y = pos_45 + 1
      end
      ans.push({target: tar , pos: [pos_x, pos_y]})
    end
  end
end


target.each do |xxx|
  ans.each do |an|
    if an[:target] == xxx
      puts "#{an[:pos][0]} #{an[:pos][1]}"
    end
  end
end