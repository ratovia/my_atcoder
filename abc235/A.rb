a, b, c = gets.chomp.split("")

abc = a + b + c
bca = b + c + a
cab = c + a + b

puts abc.to_i + bca.to_i + cab.to_i


