@h,@w = gets.split.map(&:to_i)
@array = @h.times.map { gets.chomp.codepoints }
def chmax(a, b) a > b ? a : b end

# pp @array

@dp = Array.new(@h) { Array.new(@w, nil) }
@dp[0][0] = 1

def hoge(i,j,_num)
  num = _num
  if @dp[i][j] != nil
    num = @dp[i][j]
  elsif @array[i][j] == 46
    num += 1
    @dp[i][j] = num
  else
    return num
  end
  if j+1 >= @w
    migi = num
  elsif @dp[i][j+1] != nil
    migi = @dp[i][j+1]
  else
    migi = hoge(i,j+1, num)
  end

  if i+1 >= @h
    sita = num
  elsif @dp[i+1][j] != nil
      sita = @dp[i+1][j]
  else
    sita = hoge(i+1,j, num)
  end

  return  migi > sita ? migi : sita
end

puts hoge(0,0,0)
# pp @array
# pp @dp
