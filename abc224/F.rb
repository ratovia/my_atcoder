s = gets.chomp



MOD = 998244353

s = (s % MOD).reverse

len = s.length

sum = 0
len.times do |i|
  if i == 0
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 1) )
  elsif i == 1
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 2) )
  elsif i == 2
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 3) )
  elsif i == 3
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 4) )
  elsif i == 4
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 5) )
  elsif i == 5
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 6) ) + s[i].to_i * (10 ** 5) * ( 2 ** (len - 6) )
  elsif i == 6
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 6) ) + s[i].to_i * (10 ** 5) * ( 2 ** (len - 7) ) + s[i].to_i * (10 ** 6) * ( 2 ** (len - 7) )
  elsif i == 7
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 6) ) + s[i].to_i * (10 ** 5) * ( 2 ** (len - 7) ) + s[i].to_i * (10 ** 6) * ( 2 ** (len - 8) ) + s[i].to_i * (10 ** 7) * ( 2 ** (len - 8) )

  elsif i == 8
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 6) ) + s[i].to_i * (10 ** 5) * ( 2 ** (len - 7) ) + s[i].to_i * (10 ** 6) * ( 2 ** (len - 8) ) + s[i].to_i * (10 ** 7) * ( 2 ** (len - 9) ) + s[i].to_i * (10 ** 8) * ( 2 ** (len - 9) )

  elsif i == 9
    sum += s[i].to_i * (10 ** 0) * ( 2 ** (len - 2) ) + s[i].to_i * (10 ** 1) * ( 2 ** (len - 3) ) + s[i].to_i * (10 ** 2) * ( 2 ** (len - 4) ) + s[i].to_i * (10 ** 3) * ( 2 ** (len - 5) ) + s[i].to_i * (10 ** 4) * ( 2 ** (len - 6) ) + s[i].to_i * (10 ** 5) * ( 2 ** (len - 7) ) + s[i].to_i * (10 ** 6) * ( 2 ** (len - 8) ) + s[i].to_i * (10 ** 7) * ( 2 ** (len - 9) ) + s[i].to_i * (10 ** 8) * ( 2 ** (len - 10) )  + s[i].to_i * (10 ** 9) * ( 2 ** (len - 10) )
  end
  sum %= MOD
end

puts sum % MOD
