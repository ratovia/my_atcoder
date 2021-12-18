s = gets.chomp
k = gets.to_i


queue = []
count = 0
max = 0
len = 0
0.upto(s.size - 1) do |i|
  if s[i] == "X"
    queue.push("X")
    len += 1
  else
    if count < k
      queue.push(".")
      len += 1
      count += 1
    else
      if queue.length >= k
        flag = false
        while queue.shift != "."

          len -= 1
          if len == k
            flag = true
            break
          end
        end
        len -= 1
      end
      count -= 1
      queue.push(".")
      len += 1
      count += 1
    end
  end
  if max < len
    max = len
  end
  # pp queue
end

puts max
