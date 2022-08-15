n , q = gets.split.map(&:to_i)
s = gets.chomp
s = s*(200000 + 1)
query = q.times.map { gets.split.map(&:to_i) }

top = n * 100000

query.each do |ele|
  t, x = ele
  if t == 1
    top -= x
  else
    puts s[top+x-1]
  end
end
