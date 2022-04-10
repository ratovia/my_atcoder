q = gets.to_i
array = q.times.map { gets.split.map(&:to_i) }

deque = []
array.each do |query|
  if query[0] == 1
    x = query[1]
    c = query[2]

    deque.push([x,c])
  elsif query[0] == 2
    c = query[1]

    zan = c
    sum = 0
    while zan > 0
      if deque.first
        if zan >= deque.first[1]
          item = deque.shift
          zan -= item[1]
          sum += item[0] * item[1]
        elsif zan < deque.first[1]
          sum += deque.first[0] * zan
          deque[0][1] = deque.first[1] - zan
          zan = 0
        end
      end
    end

    puts sum
  end
end
