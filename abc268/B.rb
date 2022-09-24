s = gets.chomp
t = gets.chomp

if s.length <= t.length
  s.length.times do |i|
    if s[i] != t[i]
      puts "No"
      exit
    end
  end
  puts "Yes"
else
  puts "No"
end
