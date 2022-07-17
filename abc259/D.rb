n = gets.to_i
sx, sy, tx, ty = gets.split.map(&:to_i)

array = n.times.map { gets.split.map(&:to_i) }

dp = Array.new(n,nil)

s_p = nil
t_p = nil
# require 'pry'
0.upto(n-2) do |i|
  # binding.pry
  if dp[i] == nil
    dp[i] = i
  end

  x_i, y_i, r_i = array[i]

  if (x_i - sx) * (x_i - sx) + (y_i - sy) * (y_i - sy) == r_i * r_i
    s_p = i
  end
  if (x_i - tx) * (x_i - tx) + (y_i - ty) * (y_i - ty) == r_i * r_i
    t_p = i
  end

  (i+1).upto(n-1) do |j|
    x_j, y_j, r_j = array[j]

    d = Math.sqrt( (x_i - x_j) * (x_i - x_j) + (y_i - y_j) * (y_i - y_j) )
    if d <= r_i + r_j
      dp[j] = dp[i]
    else
      dp[j] = j
    end
  end
end

# pp dp

if dp[s_p] == dp[t_p]
  puts "Yes"
else
  puts "No"
end
