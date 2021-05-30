n = gets.to_i
 
array = n.times.map { gets.split.map(&:to_i) }.transpose
 
array.map(&:sort!)
 
# p array

res = []
 
res.push((array[0][-1] - array[0][0]).abs)
res.push((array[0][-2] - array[0][0]).abs)
res.push((array[0][-1] - array[0][1]).abs)
res.push((array[1][-1] - array[1][0]).abs)
res.push((array[1][-2] - array[1][0]).abs)
res.push((array[1][-1] - array[1][1]).abs)
 
p res.sort![-2]