n, q = gets.split.map(&:to_i)


a = gets.split.map(&:to_i)

array = q.times.map { gets.split.map(&:to_i) }


# {1: [3,5,8], 2:}

hash = {}

a.each_with_index do |ele, i|
  if hash["#{ele}"]
    hash["#{ele}"] << i+1
  else
    hash["#{ele}"] = [i+1]
  end
end

# pp hash

array.each do |ele|
  x, k = ele
  if hash["#{x}"] && hash["#{x}"].length >= k
    puts hash["#{x}"][k-1]
  else
    puts -1
  end
end
