# 配列の深いところでループしない
# 遅い実装 TLE
dp = Array.new(s.size + 1) { Array.new(t.size + 1, 0) }
0.upto(s.length - 1) do |i|
  0.upto(t.length - 1) do |j|
    dp[i+1][j+1] =  dp[i][j] + 1
  end
end

# 早い実装 AC
dp = Array.new(s.size + 1) { Array.new(t.size + 1, 0) }
s.times do |i|
  dpi0 = dp[i]
  dpi1 = dp[i+1]
  t.tiems do |j|
    dpi1[j+1] =  dpi0[j] + 1
  end
end

# アホみたいにメソッド化しない
# 遅い実装 TLE
def chmax(a, b) a > b ? a : b end
dpi1[j+1] = chmax(dpi1[j+1], dpi1[j]) 

# 早い実装 AC
dpi1[j+1] = dpi1[j] if dpi1[j+1] < dpi1[j]


# 文字列の比較はしない。
# 遅い実装 TLE
s = gets.chomp
t = gets.chomp

s.times do |i|
  t.times do |j|
    if (s[i] == t[j]) 
    end
  end
end

# 早い実装 AC
s = gets.chomp
t = gets.chomp
sc = s.codepoints
tc = t.codepoints

s.times do |i|
  t.times do |j|
    if (sc[i] == tc[j]) 
    end
  end
end

# 文字列の追加はシフトで
# 遅い実装 TLE
str = ""
str = str + "a"

str = "b" + str

# 早い実装 AC

str = ""
str << "a"

str << "b"
str.reverse


