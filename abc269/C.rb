x = gets.to_i


str = "2" + x.to_s(2) + "2"
# pp str
dp = []
array = str.split("1")
len1 = str.length - array.join("").length


# pp array
(1 << len1).times do |i|
  # p i
  bit = i.to_s(2).rjust(len1,'0').split("")
  # pp bit
  sp = ""
  bit.each_with_index do |b, index|
    sp += array[index]
    sp += b
  end
  sp += array[-1]
  dp << sp[1...-1].to_i(2)
end

puts dp
