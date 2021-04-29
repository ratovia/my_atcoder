n = gets.to_i
s = gets.chomp
MOD = 10 ** 9 + 7
count = 0
atcoder = "atcoder".reverse!
require "pry"
(1 << n).times do |i|
  bit = i.to_s(2).rjust(n,'0')
  # binding.pry if bit == "0011011111"
  pointer = 0
  (n-1).downto(0) do |j|
    if bit[j] == "1"
      # break if pointer == 7
      # binding.pry
      if atcoder[pointer] == s[j]
        pointer += 1
      else
        break
      end
    end
  end
  if pointer == 7
    puts bit
    count += 1
  end
end

puts count % MOD

# attcordeer
# 0011011011
# 0011011101
# 0011011111
# 0011111011
# 0011111101
# 0011111111
# 0101011011
# 0101011101
# 0101011111
# 0101111011
# 0101111101
# 0101111111
# 0111011011
# 0111011101
# 0111011111
# 0111111011
# 0111111101
# 0111111111

aaaaaaaaaaaaaaaaaaaa
tttttttttttttttttttt
cccccccccccccccccccc
oooooooooooooooooooo
dddddddddddddddddddd
eeeeeeeeeeeeeeeeeeee
rrrrrrrrrrrrrrrrrrrr

20 * 20 * 20 * 20 * 20 * 20 * 20