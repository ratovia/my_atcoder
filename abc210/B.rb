n = gets.to_i
s = gets.chomp

res = 0
n.times do |i|
  if s[i].to_i == 1
    res = i
    break
  end
end

res % 2 == 0 ? puts('Takahashi') : puts('Aoki')
