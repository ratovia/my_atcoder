q = gets.to_i
array = q.times.map { gets.split.map(&:to_i) }
# require "pry"
dp = []
array.each do |ele|
  if ele[0] == 1
    num, x = ele
    index = dp.bsearch_index {|xk| xk >= x }
    index = dp.length if index == nil
    # binding.pry
    dp.insert(index, x)
  else
    num, x, k = ele
    if num == 2
      index = dp.bsearch_index {|xk| xk >= x }
      index = dp.length if index == nil
      if index-k >= 0
        puts dp[index-k]
      else
        puts "-1"
      end
    else
      index = dp.bsearch_index {|xk| xk >= x }
      index = dp.length if index == nil
      # binding.pry
      if index-1+k < dp.length
        puts dp[index-1+k]
      else
        puts "-1"
      end
    end
  end
  # pp dp
end
