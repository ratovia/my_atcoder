n, m = gets.split.map(&:to_i)

# 色がどの筒に入っているか[色1[], 色2[], ...]
idx = Array.new(n+1){Array.new([])}

# pp idx
tutu = []
m.times do
  k = gets.to_i
  tutu.push(gets.split.map(&:to_i))
end

current_tutu = 0
start = 0

current_top_color = tutu[current_tutu].first

idx[current_top_color].push(current_tutu)

current_tutu += 1
current_tutu = 0 if current_tutu == tutu.size

count = 0
while current_tutu != start
  break if count == 2 * n
  next if tutu[current_tutu].length == 0
  current_top_color = tutu[current_tutu].first

  if idx[current_top_color].length == 0
    # 新規の色
    # 記録する
    idx[current_top_color].push(current_tutu)
  else
    # 既存の色
    # 両方の筒の先頭から取り除く
    tutu[current_tutu].shift
    tutu[idx[current_top_color].first].shift

    count += 2
    break if count == 2 * n
    current_top_color = tutu[current_tutu].first
    idx[current_top_color].push(current_tutu)

    start = current_tutu
  end

  current_tutu += 1
  current_tutu = 0 if current_tutu == tutu.size
end


flag = true
tutu.each do |ele|
  if ele.length > 0
    flag = false
    break
  end
end

puts flag ? "Yes" : "No"

# pp tutu
