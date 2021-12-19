s = gets.chomp
t = gets.chomp

require 'set'
ss = Set.new

s.length.times do |i|
  if s[i].codepoints[0] > t[i].codepoints[0]
    ss.add((s[i].codepoints[0] - t[i].codepoints[0] + 26) % 26)
  else
    ss.add((s[i].codepoints[0] - t[i].codepoints[0] )% 26)
  end
end

# pp ss
puts ss.length == 1 ? 'Yes' : 'No'
