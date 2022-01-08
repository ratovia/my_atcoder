n = gets.to_i
s = gets.chomp
q = gets.to_i

s1 = s[0...n]
s2 = s[n...2n]

flip = false
array = q.times.map { gets.split.map(&:to_i) }
array.each do |line|
  t, a, b = line
  if flip
    
  if t == 1
    tmp = s[a-1]
    s[a-1] = s[b-1]
    s[b-1] = tmp
  elsif t == 2
    first = s.slice!(0...n)
    s = s + first
  end
end

puts s