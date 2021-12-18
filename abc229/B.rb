a, b = gets.chomp.split
a = a.split('').reverse.map(&:to_i)
b = b.split('').reverse.map(&:to_i)

min_len = a.length > b.length ? b.length : a.length

flag = false
min_len.times do |i|
  if (a[i] + b[i]) >= 10
    flag = true
    break
  end
end

puts flag ? 'Hard' : 'Easy'
