n = gets.to_i
xy = n.times.map { gets.split.map(&:to_i) }
s = gets.chomp.chars


# pp s

dp = {}

xy.each_with_index do |ele, i|
  x, y = ele
  if dp[y].nil?
    dp[y] = {nob: [], kuda: []}
  end

  if s[i] == "L"
    dp[y][:kuda] << x
    dp[y][:kuda] = [dp[y][:kuda].max]
  else
    dp[y][:nob] << x
    dp[y][:nob] = [dp[y][:nob].min]
  end

  if dp[y][:kuda].length > 0 && dp[y][:nob].length > 0 && dp[y][:kuda].first > dp[y][:nob].first
    puts "Yes"
    exit
  end
end

puts "No"
