n = gets.to_i
t = gets.chomp

current = {x: 0, y:0 , dir: "E"}

n.times do |i|
  if t[i] == "S"
    if current[:dir] == "E"
      current[:x] += 1
    elsif current[:dir] == "W"
      current[:x] -= 1
    elsif current[:dir] == "N"
      current[:y] += 1
    elsif current[:dir] == "S"
      current[:y] -= 1
    end
  elsif t[i] == "R"
    if current[:dir] == "E"
      current[:dir] = "S"
    elsif current[:dir] == "W"
      current[:dir] = "N"
    elsif current[:dir] == "N"
      current[:dir] = "E"
    elsif current[:dir] == "S"
      current[:dir] = "W"
    end
  end
end

puts "#{current[:x]} #{current[:y]}"
