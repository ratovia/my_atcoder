h1, w1 = gets.split.map(&:to_i)
a = h1.times.map { gets.split.map(&:to_i) }
h2, w2 = gets.split.map(&:to_i)
b = h2.times.map { gets.split.map(&:to_i) }

pp a
pp b

target = b[0][0]
c = Array.new(h2) { Array.new(w2, nil)}
c[0][0] = 0
require "pry"

flag = false
0.upto(h1-1) do |ai|
  0.upto(w1-1) do |aj|
    if a[ai][aj] == target
      0.upto(h2-1) do |bi|
        0.upto(w2-1) do |bj|
          next if bi == 0 && bj == 0
          count_i = 0
          (ai).upto(h1-1) do |ki|
            count_j = 0
            (aj+1).upto(w1-1) do |kj|
              count_j += 1
              binding.pry
              if (b[bi][bj] == a[ki][kj])
                c[bi][bj] = count_j
                flag = true
                break
              end
            end
            if flag
              flag = false
              break
            end
          end
        end
      end
    end
  end
end

pp c
