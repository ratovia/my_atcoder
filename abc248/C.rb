n, m , k = gets.split.map(&:to_i)

mod = 998244353

sum = 0
mul = 1
m.downto(n) do |i|
  sum += i * mul
  sum %= mod
  mul *= k
  mul %= mod
end
