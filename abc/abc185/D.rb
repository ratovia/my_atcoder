n, m = gets.split.map(&:to_i)

array = gets.split.map(&:to_i).sort!

current = 0

result_array = []
array.push(n+1)
array.each do |ele|
  zan_len = ele - (current+1)
  result_array.push(zan_len) if zan_len > 0
  current = ele
end

min = result_array.sort![0]

count = 0
# pp result_array
result_array.each do |ele|
  shou = ele / min
  amari = ele % min

  if amari != 0
    shou = shou + 1
  end
  count += shou
end

puts count 