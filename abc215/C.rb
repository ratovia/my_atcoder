s, k = gets.split
s = s.chomp
k = k.to_i


array = s.split("").permutation(s.length).to_a.uniq.sort!

puts array[k-1].join("")
# pp array
