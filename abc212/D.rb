q = gets.to_i
array = q.times.map { gets.split.map(&:to_i) }

addition = 0
sort_array = []
min = nil
imos = []
head = 0
array.each do |query|
  ope = query[0]
  if ope == 1
    index = sort_array.bsearch_index { |x| x >= query[1] }
    if index >= 0
      sort_array.insert(index, query[1])
    else
      sort_array.push(query[1])
    end
    min = sort_array[0]
  elsif ope == 2
    addition += query[1]
    imos.push(query[1] * )

  elsif ope == 3
    puts min + addition
    sort_array.shift
    min = sort_array[0]
  end
end
