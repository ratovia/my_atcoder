n = gets.to_i
array = gets.split.map(&:to_i)
MOD = 998244353

dp = Array.new(n+1) { Array.new(n+1, 0) }

# pp dp
count = 0
1.upto(n) do |i|
  0.upto(dp[i-1].length-1) do |index|
    # pp dp
    # 今回のを採用するとき
    dp[i][index+1] = dp[i-1][index] + array[i-1]
    if dp[i][index+1] % (index+1) == 0
      count += 1
    end
    # 今回のを採用しないとき
    dp[i][index] = dp[i-1][index] + array[i-1]
    # if index > 0 && dp[i][index] % index == 0
    #   count += 1
    # end
  end
end

# pp dp
puts count % 998244353
# [
#   [0, 0, 0],
#   [0, 0, 0],
#   [0, 0, 0],
#   [0, 0, 0]
# ]
