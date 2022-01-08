n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }

array2 = []
array.each do |ele|
  t, l, r = ele
  if t == 1
    l = l*2
    r = r*2
  elsif t == 2
    l = l*2
    r = r*2-1
  elsif t == 3
    l = l*2+1
    r = r*2
  elsif t == 4
    l = l*2+1
    r = r*2-1
  end
  array2.push([l,r])
end

array2.sort!

# pp array2
count = 0
0.upto(n-1-1) do |i|
  l,r = array2[i]
  # puts "r: #{r}"
  (i+1).upto(n-1) do |j|
    # puts "array2[j][0]: #{array2[j][0]}"
    if r >= array2[j][0]
      count += 1
    else
      break
    end
  end
end

puts count
