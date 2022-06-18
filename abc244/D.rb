s1,s2,s3 = gets.split.map(&:chomp)
t1,t2,t3 = gets.split.map(&:chomp)

sa = [s1,s2,s3]
ta = [t1,t2,t3]

count = 0
3.times do |i|
  if sa[i] == ta[i]
    count += 1
  end
end


if count == 0
  puts "Yes"
elsif count == 1
  puts "No"
elsif count == 2
  puts "Yes"
elsif count == 3
  puts "Yes"
end
