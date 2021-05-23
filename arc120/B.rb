h,w = gets.split.map(&:to_i)

array = h.times.map { gets.chomp }

mod = 998244353

require "set"
suba = Array.new(h+w)
suba.map!{[]}
h.times do |i|
  w.times do |j|
    pos = i+j
    target = array[i][j]
    suba[pos].push(target)
  end
end


# pp suba
sum = 0
count = 0
suba.each_with_index do |ele, i|
  if i == 0 || i == (suba.length-1) 
    if ele.include?(".")
      count += 1
    end
  else
    if ele.include?("R") && ele.include?("B")
      puts 0
      exit
    elsif ele.include?("R") && ele.include?(".")
      sum = 1
    elsif ele.include?("B") && ele.include?(".")
      sum = 1
    elsif ele.include?(".") && !ele.include?("R") && !ele.include?("B")
      count += 1
    end
  end
end

if count == 0
  puts 1
else
  puts (2 ** count) % mod
end