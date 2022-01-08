n, q = gets.split.map(&:to_i)

array = gets.split.map(&:to_i).sort

query = q.times.map { gets.to_i }

# pp array
# pp query
query.each do |x|
  index = array.bsearch_index{|ele| ele >= x}
  index = n if index == nil
  puts n - index
end
