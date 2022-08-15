s = gets.chomp
t = gets.chomp

dp_s = []
dp_t = []
count = 0
str = s
1.upto(str.length) do |i|
  if str[i-1] == str[i]
    count += 1
  else
    dp_s << [str[i-1], count+1]
    count = 0
  end
end

count = 0
str = t
1.upto(str.length) do |i|
  if str[i-1] == str[i]
    count += 1
  else
    dp_t << [str[i-1], count+1]
    count = 0
  end
end

# pp dp_s
# pp dp_t

pos_s = 0
pos_t = 0

while pos_t < dp_t.length && pos_s < dp_s.length
  if dp_s[pos_s][0] == dp_t[pos_t][0]
    if dp_s[pos_s][1] != dp_t[pos_t][1] && dp_s[pos_s][1] < 2
      puts "No"
      exit
    elsif dp_s[pos_s][1] > dp_t[pos_t][1]
      puts "No"
      exit
    end
    pos_s += 1
    pos_t += 1
  else
    puts "No"
    exit
  end
end

if s[-1] != t[-1]
  puts "No"
  exit
end
puts "Yes"
