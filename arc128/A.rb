# 添字の制約
# 0 <= i <= N

# dpの定義
# [0] i日目の金のコストの最大値
# [1] i日目の銀のコストの最大値

# 漸化式
# dp[i+1][0] = chmin(dp[i][0], dp[i][1] / a[i])
# dp[i+1][1] = chmin(dp[i][1], dp[i][0] * a[i])

# 初期化
# dp[1][0] = 1
# dp[1][1] = 0

# 出力
# dp[n]

n = gets.to_i
a = gets.split.map(&:to_i)

### DP
def chmin(a, b) a < b ? a : b end
def chmax(a, b) a > b ? a : b end



a.unshift(0)
dp = Array.new(n+2) { Array.new(2, 0)}



dp[1][0] = {num: 1.0, path: 0}
dp[1][1] = {num: 0.0, path: 0}

1.upto(n) do |i|
  # binding.irb
  if (dp[i][1][:num] == 0 && a[i].to_f == 0 ) || dp[i][0][:num] >= dp[i][1][:num] / a[i].to_f
    dp[i+1][0] = {num: dp[i][0][:num], path: 0 }
  else
    dp[i+1][0] = {num: dp[i][1][:num] / a[i].to_f, path: 1 }
  end


  if dp[i][1][:num] >= dp[i][0][:num] * a[i]
    dp[i+1][1] = {num: dp[i][1][:num], path: 0}
  else
    dp[i+1][1] = {num: dp[i][0][:num] * a[i], path: 1}
  end
end

array = []

# pp dp


len = dp.length
toggle = 0
(len-1).downto(2) do |i|
  target = dp[i][toggle][:path]
  array.push(target)
  if target == 1
    if toggle == 1
      toggle = 0
    else
      toggle = 1
    end
  end
end


puts array.reverse.map(&:to_s).join(" ")
