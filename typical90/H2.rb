n = gets.to_i
s = gets.chomp
MOD = 10 ** 9 + 7
counter = Array.new(7,0)
atcoder = "atcoder"
pointer = 0
n.times do |i|
  if s[i] == atcoder[pointer]
    counter[pointer] += 1
  end

  if counter[pointer] > 0 && s[i] == atcoder[pointer + 1]
    counter[pointer + 1] += 1
    pointer += 1
  end

  break if pointer == atcoder.length
end

sum = 1
counter.each do |ele|
  sum *= ele % MOD
end

puts sum % MOD