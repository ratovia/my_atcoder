n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
array = q.times.map { gets.split.map(&:to_i) }

hash = []
a.each_with_index do |num, i|
  hash.push([])
  if i == 0
    hash[i] = {}
  else
    hash[i] = Marshal.load(Marshal.dump(hash[i - 1]))
  end
  if hash[i][num] == nil
    hash[i][num] = [i]
  else
    hash[i][num].push(i)
  end
end

# pp hash
# require 'pry'
# binding.pry

array.each do |ele|
  l, r, x = ele
  ln = hash[l-2][x] if l - 2 >= 0
  ln = ln || []
  rn = hash[r-1][x] || []
  # binding.pry
  count = rn.length - ln.length
  puts count
end
