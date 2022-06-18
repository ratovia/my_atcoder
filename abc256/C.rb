h1,h2,h3,w1,w2,w3 = gets.split.map(&:to_i)

count = 0
1.upto(28) do |i|
  1.upto(28) do |j|
    1.upto(28) do |k|
      1.upto(28) do |l|
        ij = h1 - i - j
        kl = h2 - k - l
        ik = w1 - i - k
        jl = w2 - j - l
        ijkl = w3 - ij - kl

        if ij <= 0 || kl <= 0 || ik <= 0 || jl <= 0 || ijkl <= 0
          next
        end
        if ijkl == (h3 - ik - jl)
          count += 1
        end
      end
    end
  end
end

puts count
