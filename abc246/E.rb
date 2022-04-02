@n = gets.to_i
ax, ay = gets.split.map(&:to_i)
@bx, @by = gets.split.map(&:to_i)
def chmin(a, b) a < b ? a : b end
ax = ax - 1
ay = ay - 1
@bx = @bx - 1
@by = @by - 1

@array = @n.times.map { gets.chomp.split("") }

@dp = Array.new(@n) { Array.new(@n, -1) }
def hoge(x,y, num)
  if x == @bx && y == @by
    @dp[x][y] = num
    return
  end
  if x < 0 || x >= @n || y < 0 || y >= @n
    return
  end
  # 右上
  1.upto(chmin(@n-y, x-0)) do |i|
    if (x-i )< 0 || (x-i )>= @n || (y+i )< 0 || (y+i )>= @n
      break
    end
    if @array[x-i][y+i] == "#"
      break
    end
    if @dp[x-i][y+i]== -1
      hoge(x-i, y+i, num+1)
    else
      @dp[x-i][y+i] = chmin(@dp[x-i][y+i], num)
    end
  end

  # 右下
  1.upto(chmin(@n-y, @n-x)) do |i|
    if (x+i )< 0 || (x+i )>= @n || (y+i )< 0 || (y+i )>= @n
      break
    end
    if @array[x+i][y+i] == "#"
      break
    end
    if @dp[x+i][y+i]== -1
      hoge(x+i, y+i, num+1)
    else
      @dp[x+i][y+i] = chmin(@dp[x+i][y+i], num)
    end
  end

  # 左上
  1.upto(chmin(y-0, x-0)) do |i|
    if (x-i )< 0 || (x-i )>= @n || (y-i )< 0 || (y-i )>= @n
      break
    end
    if @array[x-i][y-i] == "#"
      break
    end
    if @dp[x-i][y-i]== -1
      hoge(x-i, y-i, num+1)
    else
      @dp[x-i][y-i] = chmin(@dp[x-i][y-i], num)
    end
  end

  # 左下
  1.upto(chmin(y - 0, @n-x)) do |i|

    if (x+i )< 0 || (x+i )>= @n || (y-i )< 0 || (y-i )>= @n
      break
    end
    if @array[x+i][y-i] == "#"
      break
    end
    if @dp[x+i][y-i] == -1
      hoge(x+i, y-i, num+1)
    else
      @dp[x+i][y-i] = chmin(@dp[x+i][y-i], num)
    end
  end
end

@dp[ax][ay] = 0
hoge(ax, ay, 0)

puts @dp[@bx][@by]
