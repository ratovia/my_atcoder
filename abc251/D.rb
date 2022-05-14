w = gets.to_i

# array = [1,2,4,8,16,32,64,128]

# while array.length != 300
#   array.push(array[-1] * 2)
# end

# pp array
array_2 = [1,
  2,
  4,
  7,
  8,
  15,
  16,
  29,
  31,
  32,
  56,
  63,
  64,
  112,
  127,
  128,
  224,
  255,
  256,
  352,
  511,
  512,
  822,
  1023,
  1024,
  1792,
  2047,
  2048,
  4095,
  4096,
  8191,
  8192,
  16383,
  16384,
  32767,
  32768,
  65535,
  65536,
  131071,
  131072,
  262143,
  262144,
  524287,
  524288,
  1048575,
  1000000]


# aaa =  array_2.combination(3).to_a.map do |ele|
#   ele.sum
# end

# pp aaa.sort

puts array_2.length
puts array_2.join(" ")
