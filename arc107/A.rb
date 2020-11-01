a,b,c = gets.split().map(&:to_i)


base = c * (c+1) / 2 # 21

base2 = b * (b+1) / 2

base3 = a * (a+1) / 2
puts base3 * base2 * base % 998244353

