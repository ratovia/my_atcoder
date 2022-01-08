n = gets.to_i
c = gets.chomp.split("")

k = [nil,nil,nil,nil,nil] 

while k.length <= 4
  k = []
  0.upto(c.length-4) do |i|
    if c[i] == c[i + 4]
      k.push(c[i])
    elsif (c[i] == "W" && c[i+4] == "R") || (c[i] == "R" && c[i+4] == "W")
      k.push("B")
    elsif (c[i] == "R" && c[i+4] == "B") || (c[i] == "B" && c[i+4] == "R")
      k.push("W")
    elsif (c[i] == "B" && c[i+4] == "W") || (c[i] == "W" && c[i+4] == "B")
      k.push("R")
    end
  end
  c = k
end

if k.length == 4
  if k[0] == k[3]
    puts k[0]
  elsif (k[0] == "W" && k[3] == "R") || (k[0] == "R" && k[3] == "W")
    puts "B"
  elsif (k[0] == "R" && k[3] == "B") || (k[0] == "B" && k[3] == "R")
    puts "W"
  elsif (k[0] == "B" && k[3] == "W") || (k[0] == "W" && k[3] == "B")
    puts "R"
  end
elsif k.length == 3
  w_w = s.count('W')
  w_r = s.count('R')
  w_b = s.count('B')
  if k[0] != k[1] && k[1] != k[2] && k[0] != k[2]
    puts k[1]
  elsif w_w == 1
    puts "W"
  elsif w_r == 1
    puts "R"
  elsif w_b == 1
    puts "B"
  end
elsif k.length == 2
  if k[0] == k[1]
    puts k[0]
  elsif (k[0] == "W" && k[1] == "R") || (k[0] == "R" && k[1] == "W")
    puts "B"
  elsif (k[0] == "R" && k[1] == "B") || (k[0] == "B" && k[1] == "R")
    puts "W"
  elsif (k[0] == "B" && k[1] == "W") || (k[0] == "W" && k[1] == "B")
    puts "R"
  end
elsif k.length == 1
  puts k[0]
end

