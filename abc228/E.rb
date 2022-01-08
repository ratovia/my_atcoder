n , k , m = gets.chomp.split.map(&:to_i)
size = [*1..m].repeated_permutation(n).size % 998244353

def kaijo(n, jyo)
  return 1 if n == 0
  return n * (kaijo(n-1 , jyo) % 998244353)
end

puts kaijo(m, size % 998244353)
