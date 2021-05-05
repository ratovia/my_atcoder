n = gets.to_i
a, b, c = gets.split.map(&:to_i).sort
def chmin(a, b) a < b ? a : b end

L = 9999
min = 1001001001
0.upto(chmin(n/a, L)) do |a_num|
  0.upto(chmin(n/b, L-a_num)) do |b_num|
    sum = a_num * a + b_num * b
    less = n - sum
    r = a_num + b_num + less/c;
    next if less % c != 0
    next if less < 0
    next if r > 9999

    min = chmin(min, r)
  end
end

puts min