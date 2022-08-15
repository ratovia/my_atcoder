h1, w1 = gets.split.map(&:to_i)
a = h1.times.map { gets.split.map(&:to_i) }
h2, w2 = gets.split.map(&:to_i)
b = h2.times.map { gets.split.map(&:to_i) }
c = Array.new(h2) { Array.new(w2, nil)}
c[0][0] = 0

target = [0,0]

flag = false
0.upto(h1-1) do |ai|
  count = nil
  0.upto(w1-1) do |aj|
    if a[ai][aj] == b[target[0]][target[1]]
      flag = true
      if target[1] == 0
        count = 0
      end
      c[target[0]][target[1]] = count
      target = (target[1] + 1) == w2 ? [target[0]+1, 0] : [target[0], target[1]+1]
      # pp target
    end
    count += 1 if count
    if target[0] == h2
      break
    end
  end
  if target[0] == h2
    break
  end
end

if target[0] != h2
  flag = false
end
# pp c
if flag
  str = c[0]
  c.each do |ele|
    flag = false if ele != str
  end
end

puts flag ? "Yes" : "No"
