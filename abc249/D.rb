n = gets.to_i
array = gets.split.map(&:to_i).sort

dp = {}
array.each do |ele|
  if dp[ele]
    dp[ele] += 1
  else
    dp[ele] = 1
  end
end
max = array[-1]
count = 0
first_time = false
# require "pry"
0.upto(n-3) do |i|
  break if first_time
  ik = array[i]
  seflag = false
  (i+1).upto(n-2) do |j|
    jk = array[j]
    next if seflag && ik == jk
    first_time = true if (j == i + 1) && ik*jk > max
    # binding.pry
    break if ik*jk > max
    if dp[ik*jk]
      mulnum = 1
      if dp[jk] >= 2
        seflag = true
        mulnum = dp[jk] - 1
        mulnum -= 1 if ik == jk
      end
      count += dp[ik*jk] * 2 * mulnum
    end
  end
  dp[ik] -= 1
  seflag = false
end


puts count
