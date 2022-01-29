n, m = gets.split.map(&:to_i)
s = gets.split
t = gets.split


s.each do |ele|
  if ele == t.first
    t.shift
    puts "Yes"
  else
    puts "No"
  end
end


