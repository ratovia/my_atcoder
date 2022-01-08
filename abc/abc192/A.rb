x = gets.chomp.split("").map(&:to_i)

if x[-3] == 0 && x[-2] == 0 && x[-1] == 0
  return puts 100
end
if x.length >= 3 && (x[-3] * 100 + x[-2] * 10 + x[-1]) % 100 == 0
  return puts 0 
end

if x.length >= 2
 
  puts 100 - (x[-2] * 10 + x[-1])
end

if x.length == 1
  puts 100 - x[-1]
end