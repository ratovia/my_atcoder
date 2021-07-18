require 'set'

n, k = gets.split.map(&:to_i)

c = gets.split.map(&:to_i)

buf = Set.new
buf_a = Array.new
buf_m = {}

max = 0
c.each do |ele|
  if buf_a.length >= k
    target = buf_a.shift
    buf.delete(target) if buf_m["#{target}"] == 1
    buf_m["#{target}"] -= 1
    buf.add(ele)
    buf_a.push(ele)
    if buf_m.has_key?("#{ele}")
      buf_m["#{ele}"] += 1
    else
      buf_m["#{ele}"] = 1
    end
  else
    buf.add(ele)
    buf_a.push(ele)
    if buf_m.has_key?("#{ele}")
      buf_m["#{ele}"] += 1
    else
      buf_m["#{ele}"] = 1
    end
  end
  # pp buf_a
  # pp buf
  if buf.length > max
    max = buf.length
  end
end

puts max
