n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

dp = {}
table = []
min_table = []
array.each_with_index do |ele, index|
  x = ele
  bi = min_table.bsearch_index {|k| k >= x }
  if bi
    table[bi] << ele
    # binding.pry
    if table[bi].length >= k

      table[bi].each do |ele2|
        dp[ele2] = index+1
      end
      table.delete_at bi
    end
  else
    table << [ele]
    if table[-1].length >= k

      table[-1].each do |ele2|
        dp[ele2] = index+1
      end
      table.delete_at -1
    end
  end
  min_table = table.map{|l| l.sort[0]}
  # pp table
end

if table.length > 0
  table.flatten.each do |ele3|
    dp[ele3] = -1
  end
end

puts dp.sort.map{|h|h[1]}
