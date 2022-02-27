a,b,c,d = gets.split.map(&:to_i)

# 基本青木の勝ち、全ての素数で実現不可である数字があれば高橋の勝ち
flag = true

sosuu = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199]

a.upto(b) do |takahashi|
  flag = false
  sosuu.each do |sosu|
    aoki = sosu - takahashi
    if aoki >= c && aoki <= d
      flag = true
    end
  end

  if flag == false
    puts "Takahashi"
    exit
  end
end
puts "Aoki"
