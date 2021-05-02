# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }


n,a,b = gets.split.map(&:to_i)


count = 0
while a != b
  count += 1

  a += 1 unless a == 1
  b -= 1 unless b == n
end



puts count
