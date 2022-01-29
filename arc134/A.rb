n, l, w = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

current = 0
num = 0
array.each do |ele|
  if ele > current
    if (ele - current) % w == 0
      num += (ele - current) / w
      current = ele + w
    else
      num += (ele - current) / w + 1
      current = ele + w
    end
  else
    current = ele + w
  end
  # pp "#{current} #{num}"
end

if current >= l
  puts num
else
  if (l - current) % w == 0
    num += (l - current) / w
  else
    num += (l - current) / w + 1
  end
  puts num
end
