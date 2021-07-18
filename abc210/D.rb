h, w, c = gets.split.map(&:to_i)

max = 0
array = h.times.map do
  a = gets.split.map(&:to_i)
  _max = a.max
  max = _max if _max > max
  a
end

pp array

max_cost = (h-1) * (w-1) * c

small_arrry = []

h.times do |i|
  small_array << array[i].sort[0..1]
