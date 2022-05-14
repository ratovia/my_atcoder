n , q = gets.split.map(&:to_i)
query = q.times.map { gets.to_i }

hash = {}

0.upto(n) do |i|
  if i == n
    hash[i] = nil
  else
    hash[i] = i+1
  end
end

pp hash
require 'pry'

query.each do |x|
  tmp = hash[x]
  tmp2 = hash[tmp]
  hash[tmp] = x
  hash[x] = tmp2 if tmp2 == x
end

pp hash
