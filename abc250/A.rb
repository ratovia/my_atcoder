h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)



count = 0

kk = [
  [0, 1],
  [0, -1],
  [1, 0],
  [-1, 0]
]

kk.each do |k|
  rx = r + k[0]
  cx = c + k[1]

  if rx >= 1 && rx <= h && cx >= 1 && cx <= w
    count += 1
  end
end

puts count
