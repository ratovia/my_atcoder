n, x = gets.chomp.split.map(&:to_i)

@array = gets.chomp.split.map(&:to_i)

more_index = @array.bsearch_index { |i| i >= x }

# pp more_index

def req_count(num, coin_index)
  return 0 if num == 0
  zan = num - (num / @array[coin_index] * @array[coin_index])
  return (num / @array[coin_index]) + req_count(zan, coin_index - 1)
end

if more_index
  more = @array[more_index]
  less = @array[more_index - 1]
  req_more = req_count(more - x, more_index - 1) + 1
  req_less = req_count(x, more_index - 1)
else
  req_more = 1000000000000000
  req_less = req_count(x, n - 1)
end
# pp [req_more, req_less]
puts [req_more, req_less].min
