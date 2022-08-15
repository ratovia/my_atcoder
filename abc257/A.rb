n , x = gets.split.map(&:to_i)

ap = [*"A".."Z"]

str = ""
ap.each do |ele|
  str += ele * n
end

puts str[x-1]
