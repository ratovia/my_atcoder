INF = Float::INFINITY

n, prime = gets.split.map(&:to_i)
array = n.times.map { gets.split.map(&:to_i) }

time_s = [0]
costs = [0,INF]

imos = Array.new(n*2,0)

array.each_with_index do |ele,i|
  start_time, end_time, cost = ele
  end_time = end_time + 1
  cc = (end_time - start_time) * cost
  
  x = time_s.bsearch_index { |x| x >=   start_time }
  time_s.insert(x, start_time) 
  costs.insert(x,cc) 
  x = time_s.bsearch_index { |x| x >=   end_time }
  time_s.insert(x, end_time)
  costs.insert(x,-cc)

  (end_time - start_time) * cost
end

costs

0.upto(costs.length - 2) do |j|
  costs[j+1] += costs[j]
end
p costs[-2]