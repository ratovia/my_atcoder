n, m = gets.split.map(&:to_i)

array = m.times.map { gets.split.map(&:to_i) }

queue = []
set = Set.new()

array.each do |item|
  a,b = item
  unless set.include?(a)
    queue.unshift(a)
  end
  unless set.include?(b)
    queue.push(b)
  end
