n = gets.to_i

bb = 1000
bb.times do |a|
  a.upto(bb) do |b|
    k = (a + b) ** 3 - 2 * a * b  * (a + b)
    puts k
  end
end
