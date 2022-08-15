array = gets.split.map(&:to_i)

g = array.group_by {|i| i}

# pp g.first[1]
puts g.length == 2 && (g.first[1].length == 2 || g.first[1].length == 3) ? "Yes" : "No"
