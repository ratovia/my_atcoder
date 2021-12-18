s1 = gets.chomp.split("")
s2 = gets.chomp.split("")

count = 0
if s1[0] == "#"
  count += 1
end

if s1[1] == "#"
  count += 1
end

if s2[0] == "#"
  count += 1
end

if s2[1] == "#"
  count += 1
end

# pp s1
# pp s2
# puts count
if count == 4
  puts "Yes"
elsif count == 3
  puts "Yes"
else count == 2
  if s1[0] == "#" && s2[1] == "#"
    puts "No"
  elsif s1[1] == "#" && s2[0] == "#"
    puts "No"
  else
    puts "Yes"
  end
end
