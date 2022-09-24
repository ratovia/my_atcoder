n = gets.to_i

exit if n % 2 == 1

(1 << n).times do |bit|
  puts bit
  bit.to_s(2).length.times do |i|
    bit[i]
    puts (bit >> i) & 1

    # 左カッコが右カッコより大きい時
  end
end
