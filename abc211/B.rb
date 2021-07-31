array = []
array.push(gets.chomp)
array.push(gets.chomp)
array.push(gets.chomp)
array.push(gets.chomp)


ss = Array.new(4,0)

array.each do |s|
  if s == 'H'
    ss[0] += 1
  elsif s == '2B'
    ss[1] += 1
  elsif s == '3B'
    ss[2] += 1
  elsif s == 'HR'
    ss[3] += 1
  end
end

if ss.all?{|ele| ele == 1}
  puts 'Yes'
else
  puts 'No'
end
