a, b, k = gets.split.map(&:to_i)



s = k.to_s(2).ljust(a+b,'1')

puts s.gsub(/(0|1)/, "0" => "a", "1" => "b")